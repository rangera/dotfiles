# emacs
alias e='emacsclient -n'
alias ec='emacsclient -c -n'

# misc
alias more='less'
alias df='df -h'
alias du='du -c -h'
alias ping='ping -c 5'
alias root='sudo su'

# ls
alias lr='ls -R'                    # recursive ls
alias ll='ls -l'
alias la='ls -A'
alias lz='ll -rS'                   # sort by size
alias lt='ll -rt'                   # sort by date
alias lm='la | less'

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    alias shutdown='shutdown -P now'
    alias reboot='shutdown -r now'
    alias halt='halt -P'
    alias egrep='egrep --color=auto'
    alias ls='ls -h --color=auto'
    alias cp='cp -i'
    alias mv='mv -i'
    alias rm='rm -I'                    # 'rm -i' prompts for every file
    alias ln='ln -i'
    alias chown='chown --preserve-root'
    alias chmod='chmod --preserve-root'
    alias chgrp='chgrp --preserve-root'
    alias update_all='sudo apt-get update -y && sudo apt-get upgrade -y && fresh update'
elif [[ "$OSTYPE" == "darwin"* ]]; then
    alias shutdown='shutdown -hP now'
    alias reboot='shutdown -r now'
    alias sleep='shutdown -s now'
    alias halt='halt -q'
    alias ls='ls -h -G'
    alias o='open'
    alias unlock_files='chflags -R nouchg *'
    alias update_all='brew update && brew upgrade && fresh update'
fi
