#!/usr/bin/python
# -*- coding: utf-8 -*-

DOCUMENTATION = '''
---
module: osx_defaults
author: Matt Cholick (@cholick)
short_description: Use PlistBuddy to set a value in a .plist file
'''

EXAMPLES = '''
- osx_plist:
    key: syncfolder
    value: ~/Dropbox/integration/alfred
    type: string
    path: ~/Library/Preferences/com.runningwithcrayons.Alfred-Preferences.plist
'''

class OSXPlist(object):
    def __init__(self, **kwargs):
        self.p_binary = '/usr/libexec/PlistBuddy'
        for key, val in kwargs.iteritems():
            setattr(self, key, val)

    def read(self):
        rc, out, err = self.module.run_command([self.p_binary, "-c", "Print :%s" % self.key, self.path])
        if rc != 0:
            return False, None
        else:
            return True, out.strip()

    def run(self):
        changed = False

        (exists, current_value) = self.read()
        if exists:
            if current_value != self.value:
                cmd = "%s -c 'Set :%s %s' %s" % (self.p_binary, self.key, self.value, self.path)
                changed = True
                self.module.run_command(cmd)
                return changed, ("Set [%s] to value [%s]" % (self.key, self.value))
            else:
                return changed, ("No change needed")
        else:
            cmd = "%s -c 'Add :%s %s %s' %s" % (self.p_binary, self.key, self.type, self.value, self.path)
            changed = True
            self.module.run_command(cmd)
            return changed, ("Added [%s] [%s] with value [%s]" % (cmd, self.key, self.value))


def main():
    module = AnsibleModule(
        argument_spec=dict(
            key=dict(
                default=None,
            ),
            value=dict(
                default=None,
                required=False,
            ),
            type=dict(
                default=None,
                required=True,
            ),
            path=dict(
                required=True,
            )
        ),
        supports_check_mode=False,
    )
    key = module.params['key']
    value = module.params['value']
    type = module.params['type']
    path = module.params['path']

    plist = OSXPlist(module=module, key=key, value=value, type=type, path=path)
    (changed, message) = plist.run()

    module.exit_json(changed=changed, msg=message)


from ansible.module_utils.basic import *

if __name__ == '__main__':
    main()
