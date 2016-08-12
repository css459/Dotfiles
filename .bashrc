#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias windows='systemctl start gdm'
alias nowindows='systemctl stop gdm'
alias s='sudo du -sh'
alias fullbackup='rsync -aAXv --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} /'
alias packagelistoffical='pacman -Qqe | grep -v "$(pacman -Qqm)" > pkglist_offical.txt'
alias packagelistlocal='pacman -Qqm > pkglist_local.txt'

PS1='[\u@\h \W]\$ '

# [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
