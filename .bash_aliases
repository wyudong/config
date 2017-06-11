# System
alias ls='ls -G'
alias ll='ls -ahl'
alias ..='cd ..'
alias ...='cd ../..'
alias rrr='rm -rf'
alias o=open
alias oo='open .'
alias xx=clear
alias path='echo $PATH'

# Apps
alias a=atom
alias aa='atom .'
alias ffmpeg='ffmpeg -hide_banner'
alias npmls='npm list --depth=0'
alias qr='node ~/bin/qr'
alias unar='~/Downloads/archived/unar1.9.1/unar'
alias vi=vim

# Git
alias editgit='atom ~/.gitconfig'
alias cl='git clone'
alias log="git log --color --graph --pretty=format:'%C(auto)%h%Creset%C(auto)%d%Creset %C(auto)%cd%Creset %C(blue)<%an>%Creset %s' --date=short"
alias st='git status'
alias add='git add .'
alias cm='git commit -m'
alias br='git branch'
alias ch='git checkout'
alias diff='git diff'
alias dsf='git dsf'
alias fetch='git fetch'
alias push='git push origin HEAD'
alias pull='git pull'
alias reset.hard='git reset HEAD --hard'
alias reset.mixed='git reset HEAD~ --mixed'
alias reset.soft='git reset HEAD~ --soft'

# AWS
alias s3='aws s3'

## EC2
# WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!
# $ ssh-keygen -R 192.168.3.10

alias ecc="alias | grep 'ecc\.'"

### SoundlinksLinux
alias ecc.SoundlinksLinux='ssh -i /Users/wyudong/Documents/Resource/wyudong-key-pair-cnnorth1.pem ec2-user@ec2-54-222-152-157.cn-north-1.compute.amazonaws.com.cn'
### SLWeb-production-1
alias ecc.SLWeb-production-1='ssh -i /Users/wyudong/Documents/Resource/wyudong-key-pair-cnnorth1.pem ec2-user@ec2-54-223-26-104.cn-north-1.compute.amazonaws.com.cn'
alias ecc.heisenberg-develop='ssh -i /Users/wyudong/Documents/Resource/wyudong-key-pair-cnnorth1.pem ec2-user@ec2-54-223-221-110.cn-north-1.compute.amazonaws.com.cn'

# Gulp
alias gs='gulp serve'
alias gb='gulp build'
alias gd='gulp dist'

# nginx
alias nginx.start='sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.nginx.plist'
alias nginx.stop='sudo launchctl unload /Library/LaunchDaemons/homebrew.mxcl.nginx.plist'
alias nginx.restart='nginx.stop && nginx.start'
alias nginx.conf='atom /usr/local/etc/nginx/nginx.conf'
alias nginx.logs.error='tail -250f /usr/local/etc/nginx/logs/error.log'
alias nginx.logs.access='tail -250f /usr/local/etc/nginx/logs/access.log'
alias nginx.logs.default.access='tail -250f /usr/local/etc/nginx/logs/default.access.log'
alias nginx.logs.default-ssl.access='tail -250f /usr/local/etc/nginx/logs/default-ssl.access.log'

# Laravel
alias artisan='php artisan'
alias artisan.serve='sudo php artisan serve --port=80'

# Proxy in shell
alias ip='curl ip.gs'
alias pr='export http_proxy=http://127.0.0.1:1087;export https_proxy=http://127.0.0.1:1087;ip'
