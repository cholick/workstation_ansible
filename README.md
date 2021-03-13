### Outdated - Don't Actually Run This

This playbook has decayed too much over time; definitely don't use it. It does still have current & relevant settings, but setting up a new machine just happens too seldom to keep the automation alive and tested. I do still perform manual setup based on the files in this repo though.

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
   * Alfred Preferences -> Features -> File Search -> Navigation: Clear `Previous Path` shortcut
   * Alfred Preferences -> Features -> Clipboard History -> Keep plain Text (24 hours)
1. Chrome: login & sync settings (customize to exclude Open Tabs, Passwords, and Payment Methods)
1. LastPass binary plugin: https://lastpass.com/misc_download2.php
1. GoLand & PyCharm: https://www.jetbrains.com/products/
    * Plugins:
      - .ignore
      - Docker integration
      - Go
      - HCL language support
      - Markdown support
      - Python (for Goland)
    * Version Control -> Confirmation -> uncheck "Restore workspace on branch switching"
    * Appearance and Behavior -> Appearance
      - Disable "Smooth scrolling"
      - Theme -> macOS Light
      - Use Custom Font -> Lucida Grande
    * Editor
      - General -> Uncheck "Enable Drag'n'Drop" (I never have issues, but people I'm pairing with seem to)
      - General -> Code Folding -> Fold by default -> Go -> Uncheck all
      - General -> Code Folding -> XML -> Uncheck "XML Entities"
      - Color Scheme -> Classic Light
      - Inlay Hints -> Disable all
    * Editor -> Font -> Menlo, 12, 1.1 line spacing
1. DataGrip: https://www.jetbrains.com/datagrip/download/
1. Docker: https://hub.docker.com/editions/community/docker-ce-desktop-mac/
1. Veracrypt
1. Provision Github Personal Access Token: https://github.com/settings/tokens
1. App Store re-install
   * Affinity Photo
   * DaisyDisk
   * Pommie
   * Revisions for Dropbox
   * Webcam Settings
1. Mojave: Fix [subpixel antialiasing](https://www.cleverfiles.com/help/mac-fonts-text-blurry.html) (for external monitors)
   * `defaults write -g CGFontRenderingFontSmoothingDisabled -bool FALSE`
1. Remove conflicting OS shortcuts: Keyboard -> Shortcuts
   * Services -> Text -> Search man Page Index... (It's set to ⇧⌘A, which conflicts with JetBrains tooling's "Find Action")
   * App Shortcuts -> Show Help menu
1. Hotkeys
   * Mission Control
      * Mission Control: F8
      * Move left a space: ⌃⌘←
      * Move right a space: ⌃⌘→

### Replacement for OSX Role
Replacement scirpt for the OSX role

```shell
defaults write -g KeyRepeat -int 2
defaults write -g InitialKeyRepeat -int 25
defaults write -g NSAutomaticDashSubstitutionEnabled -bool false

defaults write -g AppleShowScrollBars -string "Always"

defaults write -g com.apple.swipescrolldirection -bool false

defaults write -g AppleShowAllExtensions -bool true
# Default to list view in finder windows
defaults write com.apple.finder FXPreferredViewStyle -string Nlsv

# Setup hot-corners
defaults write com.apple.dock wvous-tl-corner -int 6
defaults write com.apple.dock wvous-bl-corner -int 10
defaults write com.apple.dock wvous-tr-corner -int 4

# Don't re-arrange spaces based on LRU
defaults write com.apple.dock mru-spaces -bool false
```

### Testing

Setting up an OSX vm
* https://blog.frd.mn/install-os-x-10-10-yosemite-in-virtualbox/

Fusion is much easier: the app has a config option for creating a vm from OSX boot image.

### Todo
- [ ] Sublime text v3 release flips to ugly, flat theme. Add Install of [Theme - Legacy](https://packagecontrol.io/packages/Theme%20-%20Legacy) package
- [ ] k8s tools (minikube, helm, etc)

### Notes

##### Alred
* https://github.com/willfarrell/alfred-encode-decode-workflow
* https://github.com/willfarrell/alfred-hash-workflow

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
