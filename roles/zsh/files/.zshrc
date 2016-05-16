# Source Prezto.
if [[ -s ~/.zprezto/init.zsh ]]; then
  	source ~/.zprezto/init.zsh
fi

# Aliases

alias history="fc -l 1"

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias rm='nocorrect rm'

# Configure zsh plugins

export HISTFILE=~/.zsh_history
export HISTSIZE=20000
export SAVEHIST=20000

setopt EXTENDED_HISTORY
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY
unsetopt SHARE_HISTORY

setopt HIST_VERIFY

setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_EXPIRE_DUPS_FIRST

# Functions
alias serve_dir='python -m SimpleHTTPServer'

killport() {
	if [ -z $1 ]; then
		echo 'Port is required. Usage: "killport 8000"';
		return
	fi
	local pid=`lsof  -i :$1 | grep LISTEN | awk '{print $2}'`
	if [ -z $pid ]; then
		echo "No process running on $1"
	else
		echo "Killing process [$pid]"
		kill $pid
	fi
}

function setjdk() { if [ $# -ne 0 ];then export JAVA_HOME=`/usr/libexec/java_home -v $@`; fi; java -version; }
function lsjdk() { ls -1 /System/Library/Java/JavaVirtualMachines/; ls -1 /Library/Java/JavaVirtualMachines/;  }

# Configurations

export EDITOR=emacs

export JAVA_HOME=$(/usr/libexec/java_home)
export _JAVA_OPTIONS="-Xmx2g"

export PATH=/usr/local/bin:$HOME/bin:$PATH:/usr/bin:/bin:/usr/sbin:/sbin

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# *vm

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh

[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" && -z $(which sdkman-init.sh | grep '/sdkman-init.sh') ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
