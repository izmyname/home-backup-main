#zsh
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' max-errors 3
zstyle ':completion:*' menu select
autoload -Uz compinit
compinit -d ~/.cache/zcompdump
HISTFILE=~/.cache/zsh_history
HISTSIZE=500
SAVEHIST=500
setopt autocd extendedglob notify correct
unsetopt beep
bindkey -v
autoload -U colors && colors
PS1="%{$fg[red]%}%D{%a %d %b} %D{%H:%M} %{$reset_color%}%{$fg[green]%}%n%{$reset_color%} %{$fg[blue]%}%~ %{$reset_color%}%{$fg[red]%}>%{$reset_color%}% "

#base (systemd, coreutils, util-linux)
export PATH=$HOME/.local/bin:$PATH
alias "ls=ls --color=auto"
alias "grep=grep --color=auto"
alias cal='cal -m'
alias zzz='systemctl suspend'
alias ZZZ='systemctl poweroff'
alias df='df -h'
alias free='free -h'
alias du='du -h'

#xdg-user-dirs
source ~/.config/user-dirs.dirs

#rclone
export RCLONE_PROGRESS=true
export RCLONE_HUMAN_READABLE=true

#kitty 
alias icat="kitty +kitten icat"

#nnn 
#variables also have to be modified in ~/.local/bin/nwrap after each update.
if [ -f /usr/share/nnn/quitcd/quitcd.bash_sh_zsh ]; then
    source /usr/share/nnn/quitcd/quitcd.bash_sh_zsh
fi

export NNN_BMS='c:~/.config/;o:~/.local/opt;s:~/.local/share/Steam/steamapps;l:~/.local/share;'
export NNN_PLUG='m:mtpmount;p:preview-tui;f:fzopen;M:nmount;S:suedit;u:getplugs;g:gpge;G:gpgd;i:-!|mediainfo "$nnn";l:-!less -iR "$nnn"*;x:!&gio launch "$nnn";v:-!&swayimg "$nnn";s:-!|du -hs "$nnn";k:-!kitty +kitten icat "$nnn"'
export NNN_TRASH=1
BLK="04" CHR="04" DIR="04" EXE="00" REG="00" HARDLINK="00" SYMLINK="06" MISSING="00" ORPHAN="01" FIFO="0F" SOCK="0F" OTHER="02"
export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"
export NNN_ARCHIVE="\\.(7z|a|ace|alz|arc|arj|bz|bz2|cab|cpio|deb|gz|jar|lha|lz|lzh|lzma|lzo|rar|rpm|rz|t7z|tar|tbz|tbz2|tgz|tlz|txz|tZ|tzo|war|xpi|xz|Z|zip)$"
export NNN_FIFO='/tmp/nnn.fifo'
alias n='n -ex'
alias nnn='n -ex'

#mpc 
alias mpc="mpc -f '%position%. %Artist% %performer% - %title% (%Album% %date%)'"
#export MPC_FORMAT='%position%. %Artist% %performer% - %title% (%Album% %date%)'

#tty-clock
alias tty-clock='tty-clock -C3 -c -s -n -f "%A %d %B %Y (%Z)"'
alias clock=tty-clock

#inxi
alias inxi="inxi -c11"

#pacman-contrib 
export DIFFPROG='nvim -d'

#neovim
alias edit=nvim

#python
export PYTHONSTARTUP=~/.config/python/pythonrc

#units
alias units='units -H '~/.cache/units_history' '

#trash-cli
alias lstrash='trash-list'
alias untrash='trash-restore'
alias purgetrash='trash-empty -f'

#display on startup
cal

cat ~/Documents/to-do
