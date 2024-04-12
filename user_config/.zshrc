#shell config
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' max-errors 3
zstyle ':completion:*' menu select
autoload -Uz compinit add-zsh-hook
compinit -d ~/.cache/zcompdump
HISTFILE=~/.cache/zsh_history
HISTSIZE=500
SAVEHIST=500
setopt autocd extendedglob notify correct
unsetopt beep
bindkey -v
autoload -U colors && colors
PS1="%{$fg[red]%}%D{%a %d %b} %D{%H:%M} %{$reset_color%}%{$fg[green]%}%n%{$reset_color%} %{$fg[blue]%}%~ %{$reset_color%}%{$fg[red]%}>%{$reset_color%}% "

#shell functions

# Called before prompt(?)
function precmd {
    # Set window title
    print -Pn "\e]0;%(1j,%j job%(2j|s|); ,)%~\e\\"
}

# Called when executing a command
function preexec {
    print -Pn "\e]0;${(q)1}\e\\"
}

#foot - spawn new terminal in the current working directory
function osc7-pwd() {
    emulate -L zsh # also sets localoptions for us
    local LC_ALL=C
    printf '\e]7;file://%s%s\e\' $HOST ${PWD//(#m)([^@-Za-z&-;_~])/%${(l:2::0:)$(([##16]#MATCH))}}
}

function chpwd-osc7-pwd() {
    (( ZSH_SUBSHELL )) || osc7-pwd
}
add-zsh-hook -Uz chpwd chpwd-osc7-pwd


#nnn quitcd 
if [ -f /usr/share/nnn/quitcd/quitcd.bash_sh_zsh ]; then
    source /usr/share/nnn/quitcd/quitcd.bash_sh_zsh
fi

#source
source ~/.config/user-dirs.dirs

#environment variables
export PATH=$HOME/.local/bin:$PATH
export EDITOR=nvim
export VISUAL=$EDITOR
export RCLONE_PROGRESS=true
export RCLONE_HUMAN_READABLE=true
export NNN_TERMINAL='foot -T preview-tui'
export NNN_BMS='c:~/.config/;o:~/.local/opt;l:~/.local/share;'
export NNN_PLUG='m:mtpmount;p:preview-tui;f:fzopen;M:nmount;S:suedit;u:getplugs;g:gpge;G:gpgd;i:-!|mediainfo "$nnn";l:-!less -iR "$nnn"*;x:!&gio launch "$nnn";v:-!&swayimg "$nnn";s:-!|du -hs "$nnn";w:-!&mpv "$nnn";'
export NNN_TRASH=1
BLK="04" CHR="04" DIR="04" EXE="00" REG="00" HARDLINK="00" SYMLINK="06" MISSING="00" ORPHAN="01" FIFO="0F" SOCK="0F" OTHER="02"
export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"
export NNN_ARCHIVE="\\.(7z|a|ace|alz|arc|arj|bz|bz2|cab|cpio|deb|gz|jar|lha|lz|lzh|lzma|lzo|rar|rpm|rz|t7z|tar|tbz|tbz2|tgz|tlz|txz|tZ|tzo|war|xpi|xz|Z|zip)$"
export NNN_FIFO='/tmp/nnn.fifo'
#export MPC_FORMAT='%position%. %Artist% %performer% - %title% (%Album% %date%)'
export DIFFPROG='nvim -d'  #pacdiff
export PYTHONSTARTUP=~/.config/python/pythonrc #save python history to ~/.cache


#aliases
alias "ls=ls --color=auto"
alias "grep=grep --color=auto"
alias cal='cal -m'
alias zzz='systemctl suspend'
alias df='df -h'
alias free='free -h'
alias du='du -h'
alias lstrash='trash-list'
alias untrash='trash-restore'
alias purgetrash='trash-empty -f'
alias inxi="inxi -c11"
alias tty-clock='tty-clock -C3 -c -s -n -f "%A %d %B %Y (%Z)"'
alias mpc="mpc -f '%position%. %Artist% %performer% - %title% (%Album% %date%)'"
alias n='n -ex'
alias nnn='n -ex'
alias edit=nvim
alias git-pull-all='find . -maxdepth 3 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull' #pull all repos up to level 3 dir, at once.
alias makepkg-install-clean='makepkg -sric'
alias cleanpkg='paccache -c $HOME/.cache/pacman/pkg/ -rk0'
alias todo='cat ~/Documents/to-do'
alias flatinstall='flatpak install --user'
alias flatupd='flatpak update --user'
alias flatpurge='flatpak uninstall --delete-data --user'
alias flatlist='flatpak list --app'
alias flatlistall='flatpak list'
alias flatclean='flatpak uninstall --unused --user'
alias flatfix='flatpak repair --user'
alias killhyprlock='pkill -USR1 hyprlock' #in case if the lockscreen freezes - login into another tty and execute the command'
alias mpd-notification="mpd-notification -H localhost -p 6600 -m $XDG_MUSIC_DIR -s 150 -t 10"
alias udiskie-umount='udiskie-umount -df'

#directory shortcuts
hash -d mus=$XDG_MUSIC_DIR
hash -d doc=$XDG_DOCUMENTS_DIR
hash -d web=$XDG_DOWNLOAD_DIR
hash -d pic=$XDG_PICTURES_DIR
hash -d vid=$XDG_VIDEOS_DIR
hash -d cfg=$HOME/.config
hash -d bgs=$HOME/.local/share/backgrounds
hash -d loc=$HOME/.local/share
hash -d mtp=/run/user/1000/gvfs
hash -d ext=/run/media
hash -d opt=$HOME/.local/opt

#display on startup
cal

cat $XDG_DOCUMENTS_DIR/to-do
