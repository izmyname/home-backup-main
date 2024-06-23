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
PS1="%B%{$fg[green]%}%  %n%{$reset_color%}%b %B%{$fg[blue]%}% 📂%~ %{$reset_color%}%b%{$fg[white]%}>%{$reset_color%}% "
