source ~/.config/zsh/config.zsh
source ~/.config/zsh/functions.zsh
source ~/.config/user-dirs.dirs
source ~/.config/zsh/nnn_vars.zsh
source ~/.config/zsh/vars.zsh
source ~/.config/zsh/aliases.zsh
source ~/.config/zsh/hashd.zsh

#zoxide
eval "$(zoxide init --cmd cd zsh)"

#display on startup
cal
