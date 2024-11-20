#
# ~/.bashrc
#

# sourcing my keybinds
source ~/dotfiles/dotfiles/.keybinds

# sourcing the zoxide config area.
source ~/dotfiles/dotfiles/.zoxide

# sourcing the wal required .bashrc stuff
source ~/dotfiles/dotfiles/.wal

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# enabling ble.sh (autocomplete)
source ~/.local/share/blesh/ble.sh
source ~/.local/share/blesh/ble.sh

export PATH="/usr/local/texlive/2024/bin/x86_64-linux:$PATH"

export MANPAGER='nvim +Man!'
