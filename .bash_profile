# Get the Git branch
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Custom bash prompt
# Includes custom character for the prompt, path, and Git branch name
# Source: kirsle.net/wizards/ps1.html
export PS1="\n\[$(tput bold)\]\[$(tput setaf 5)\]➜ \[$(tput setaf 6)\]\w\[$(tput setaf 3)\]\$(parse_git_branch) \[$(tput sgr0)\]"

# Aliases

## Shortcuts
alias ls='ls -G'
alias ll='ls -al'
alias ..='cd ../'
alias editgit='atom ~/.gitconfig'
alias editbash='atom ~/.bash_profile'
alias resource='source ~/.bash_profile && echo "Done!"'
alias vi=vim
alias o=open

## Git commands
alias cl='git clone'
alias log='git log'
alias st='git status'
alias cm='git commit'
alias br='git branch'
alias ch='git checkout'
alias diff='git diff'
alias fetch='git fetch'
alias push='git push origin head'
alias pull='git pull'
alias reset-hard='git reset HEAD --hard'

# git-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

## AWS
alias ecc='ssh -i /Users/wyudong/Documents/Resource/wyudong-key-pair-cnnorth1.pem ec2-user@ec2-54-222-152-157.cn-north-1.compute.amazonaws.com.cn'
alias s3ls='aws s3 ls'
alias s3cp='aws s3 cp'
alias s3mv='aws s3 mv'
alias s3rm='aws s3 rm'
alias s3sync='aws s3 sync'

## Gulp
alias gs='gulp serve'
alias gb='gulp build'
alias gd='gulp dist'

## Unarchive
alias unar='~/Downloads/archive/unar1.9.1/unar'

## mkdir and cd
function take() {
    mkdir "$1" && cd "$1"
}

# PATH

## Homebrew's sbin
export PATH="/usr/local/sbin:$PATH"

## nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

## Setting PATH for JAVA_HOME
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

## Android
export PATH="$HOME/Library/Android/sdk/platform-tools:$PATH"
export PATH="$HOME/Library/Android/ndk:$PATH"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# z script (https://github.com/rupa/z)
. /usr/local/bin/z.sh
