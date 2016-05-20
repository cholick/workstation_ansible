
### Bootstrap

1. Install [Dropbox](https://www.dropbox.com/downloading) (quick & dirty secrets solution)
1. `xcode-select --install`
1. Install [Homebrew](https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Installation.md#installation)
1. Install `pyenv`
    * `brew install pyenv`
1. Setup `pyenv`
    * `pyenv install 2.7.11 && pyenv rehash`
    * `pyenv global 2.7.11`
1. Install `ansible`
    * `pip install ansible`

### Installation

```
ansible-playbook --ask-become-pass workstation.yml -i inventory_local
```

### Testing

Setting up an OSX vm
* https://blog.frd.mn/install-os-x-10-10-yosemite-in-virtualbox/

### Cleanup

1. Sublime
    * Start & wait for restart prompt (package control sets up in background)
    * Enter license
1. Reboot to pickup config writes

### Notes

When the cows are too noisy:
```
export ANSIBLE_NOCOWS=1
```

```
 ____________
< Goodbye :( >
 ------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
```
