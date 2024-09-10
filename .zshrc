source $HOME/.config/zsh/config.zsh
source $HOME/.config/zsh/functions.zsh
source $HOME/.config/user-dirs.dirs
source $HOME/.config/zsh/nnn_vars.zsh
source $HOME/.config/zsh/vars.zsh
source $HOME/.config/zsh/aliases.zsh
source $HOME/.config/zsh/hashd.zsh

#zoxide
eval "$(zoxide init --cmd cd zsh)"

#display on startup
cal&&echo -e '\n\033[1mTo do:\033[0m'&&task
