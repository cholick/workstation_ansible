
### Bootstrap

1. Install [Dropbox](https://www.dropbox.com/downloading) (quick & dirty secrets solution)
1. `xcode-select --install`
1. Install [Homebrew](https://github.com/Homebrew/brew/blob/master/docs/Installation.md#installation)
  * `mkdir ~/Applications; cd ~/Applications`
  * `git clone https://github.com/Homebrew/brew/`
  * `export PATH=$PATH:$HOME/Applications/brew/bin`
1. Install `pyenv`
  * `brew install pyenv`
1. Setup `pyenv`
  * `eval "$(pyenv init -)"`
  * `pyenv install 2.7.12 && pyenv rehash`
  * `pyenv shell 2.7.12`
1. Install `ansible`
  * `pip install ansible`

### Installation

```
ansible-playbook --ask-become-pass workstation.yml -i inventory_local
```

### Cleanup

1. Sublime
  * Start & wait for restart prompt (package control sets up in background)
  * Enter license
1. Reboot to pickup config writes

### Manual
1. Register Alfred & setup sync folder (~/Dropbox/integration/alfred)
1. Chrome: https://www.google.com/chrome/browser/desktop/index.html
    * Advanced sync settings -> Disable open tabs, history, autofill
    * Privacy -> Content Settings -> Plugins -> Let me choose when to run plugin content
    * Privacy -> Content Settings -> Cookies -> Block third-party cookies and site data
1. LastPass binary plugin: https://lastpass.com/misc_download2.php
1. IntelliJ: https://www.jetbrains.com/idea/download/
    * .ignore
    * BashSupport
    * Docker integration
    * Go
    * HCL language support
    * Ini4Idea
    * Markdown support
    * Python
1. DataGrip: https://www.jetbrains.com/datagrip/download/
1. Docker: https://docs.docker.com/engine/installation/mac/ 
1. Total Spaces
1. Veracrypt
1. Keybase.io
1. Provision Github Personal Access Token: https://github.com/settings/tokens
1. Divvy
1. The Unarchiver
1. DasiyDisk

### Testing

Setting up an OSX vm
* https://blog.frd.mn/install-os-x-10-10-yosemite-in-virtualbox/

Fusion is much easier: the app has a config option for creating a vm from OSX boot image.

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

### References

* https://whiskykilo.com/mac-tweaks/
* https://github.com/hjuutilainen/dotfiles/blob/master/bin/osx-user-defaults.sh
* https://github.com/josh-/dotfiles/blob/master/osx
* https://github.com/mathiasbynens/dotfiles/blob/master/.osx
* https://gist.github.com/zenorocha/7159780
* https://github.com/seattle-beach/alfalfa
* https://github.com/kejadlen/dotfiles
