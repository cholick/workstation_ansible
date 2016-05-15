
### Bootstrap

1. `xcode-select --install`
1. Install [Homebrew](https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Installation.md#installation)
1. Install `pyenv`
    `brew install pyenv`
1. Setup `pyenv`
    * `pyenv install 2.7.11 && pyenv rehash`
    * `pyenv global 2.7.11`
1. Install `ansible`
    * `pip install ansible`

### Installation

```
ansible-playbook workstation.yml inventory_local
```

### Cleanup

1. Sublime
    * Start & wait for restart prompt (package control sets up in background)
    * Enter license


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
