# Get the Git branch
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Custom bash prompt
# Includes custom character for the prompt, path, and Git branch name
# Source: kirsle.net/wizards/ps1.html
export PS1="\n\[$(tput bold)\]\[$(tput setaf 5)\]➜ \[$(tput setaf 6)\]\w\[$(tput setaf 3)\]\$(parse_git_branch) \[$(tput sgr0)\]"

# Aliases
alias editbash='atom ~/.bash_profile'
alias editalias='atom ~/.bash_aliases'
alias resource='source ~/.bash_profile && echo "Done!"'

# More aliases
source ~/.bash_aliases

# Shortcuts
## `mkdir` and go to that dir
function hit() {
    mkdir "$1" && cd "$1"
}

## `cd` and `ll`
function cs() {
    cd "$1" && ll
}

## AnyBar
## https://github.com/tonsky/AnyBar
function anybar {
    echo -n $1 | nc -4u -w0 localhost ${2:-1738};
}

# PATH

## Homebrew's sbin
export PATH="/usr/local/sbin:$PATH"

## nvm
# I used to install nvm using homebrew
# It may lead to slow startup and nvm is utterly unsupported on homebrew
# https://github.com/creationix/nvm/issues/860#issuecomment-157945343
# source $(brew --prefix nvm)/nvm.sh
# source /usr/local/opt/nvm/nvm.sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## JAVA_HOME
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

## Android
# export PATH="$HOME/Library/Android/sdk/platform-tools:$PATH"
# export PATH="$HOME/Library/Android/ndk:$PATH"

## z script (https://github.com/rupa/z)
source /usr/local/bin/z.sh

## git-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

## Personal bin
export PATH="$HOME/bin:$PATH"

## Composer
export PATH="$HOME/.composer/vendor/bin:$PATH"

## Load RVM into a shell session *as a function*
## Keep next line at the bottom of .bash_profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
