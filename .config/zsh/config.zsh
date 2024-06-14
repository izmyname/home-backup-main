zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' max-errors 3 rehash true
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
PS1="%{$fg[magenta]%}%D{%a %d %b} %D{%H:%M} %{$reset_color%}%{$fg[cyan]%}%n%{$reset_color%} %{$fg[blue]%}%~ %{$reset_color%}%{$fg[white]%}>%{$reset_color%}% "
