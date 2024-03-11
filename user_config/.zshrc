#shell config
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

#external configs
source ~/.config/user-dirs.dirs

#nnn quitcd 
if [ -f /usr/share/nnn/quitcd/quitcd.bash_sh_zsh ]; then
    source /usr/share/nnn/quitcd/quitcd.bash_sh_zsh
fi

#environment variables
export PATH=$HOME/.local/bin:$PATH
export RCLONE_PROGRESS=true
export RCLONE_HUMAN_READABLE=true
export NNN_BMS='c:~/.config/;o:~/.local/opt;s:~/.local/share/Steam/steamapps;l:~/.local/share;'
export NNN_PLUG='m:mtpmount;p:preview-tui;f:fzopen;M:nmount;S:suedit;u:getplugs;g:gpge;G:gpgd;i:-!|mediainfo "$nnn";l:-!less -iR "$nnn"*;x:!&gio launch "$nnn";v:-!&swayimg "$nnn";s:-!|du -hs "$nnn";k:-!kitty +kitten icat "$nnn"'
export NNN_TRASH=1
BLK="04" CHR="04" DIR="04" EXE="00" REG="00" HARDLINK="00" SYMLINK="06" MISSING="00" ORPHAN="01" FIFO="0F" SOCK="0F" OTHER="02"
export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"
export NNN_ARCHIVE="\\.(7z|a|ace|alz|arc|arj|bz|bz2|cab|cpio|deb|gz|jar|lha|lz|lzh|lzma|lzo|rar|rpm|rz|t7z|tar|tbz|tbz2|tgz|tlz|txz|tZ|tzo|war|xpi|xz|Z|zip)$"
export NNN_FIFO='/tmp/nnn.fifo'
#export MPC_FORMAT='%position%. %Artist% %performer% - %title% (%Album% %date%)'
export DIFFPROG='nvim -d'
export PYTHONSTARTUP=~/.config/python/pythonrc


#aliases
alias "ls=ls --color=auto"
alias "grep=grep --color=auto"
alias cal='cal -m'
alias zzz='systemctl suspend'
alias ZZZ='systemctl poweroff'
alias df='df -h'
alias free='free -h'
alias du='du -h'
alias lstrash='trash-list'
alias untrash='trash-restore'
alias purgetrash='trash-empty -f'
alias units='units -H '~/.cache/units_history' '
alias inxi="inxi -c11"
alias tty-clock='tty-clock -C3 -c -s -n -f "%A %d %B %Y (%Z)"'
alias mpc="mpc -f '%position%. %Artist% %performer% - %title% (%Album% %date%)'"
alias n='n -ex'
alias nnn='n -ex'
alias icat="kitty +kitten icat"
alias edit=nvim
alias git-pull-all='find . -maxdepth 3 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull'

#display on startup
cal

cat ~/Documents/to-do
