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
alias laravel='~/.composer/vendor/bin/laravel'
alias npmls='npm list --depth=0'
alias qr='node ~/bin/qr.js'
alias unar='~/Downloads/archive/unar1.9.1/unar'
alias vi=vim

# Git commands
alias editgit='atom ~/.gitconfig'
alias cl='git clone'
alias log="git log --color --graph --pretty=format:'%C(auto)%h%Creset%C(auto)%d%Creset %C(auto)%cd%Creset %C(blue)<%an>%Creset %s' --date=short"
alias st='git status'
alias add='git add .'
alias cm='git commit -m'
alias br='git branch'
alias ch='git checkout'
alias diff='git diff'
alias fetch='git fetch'
alias push='git push origin HEAD'
alias pull='git pull'
alias reset.hard='git reset HEAD --hard'
alias reset.mixed='git reset HEAD~ --mixed'
alias reset.soft='git reset HEAD~ --soft'

# AWS
alias s3ls='aws s3 ls'
alias s3cp='aws s3 cp'
alias s3mv='aws s3 mv'
alias s3rm='aws s3 rm'
alias s3sync='aws s3 sync'

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

# php-fpm
alias php-fpm.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.php56.plist"
alias php-fpm.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.php56.plist"
alias php-fpm.restart='php-fpm.stop && php-fpm.start'

# mysql
alias mysql.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
alias mysql.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
alias mysql.restart='mysql.stop && mysql.start'
