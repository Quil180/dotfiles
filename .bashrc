#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# General Quick Alias to help navigate the terminal and editing things.
alias edith='nvim ~/.config/hypr/hyprland.conf'
alias edithb='nvim ~/.config/hypr/modules/binds.conf'
alias updb='source ~/.bashrc'
alias editb='nvim ~/.bashrc'
alias updg='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias editg='sudo nvim /etc/default/grub'
alias shutdown='sudo shutdown'
alias reboot='sudo reboot'
alias nf='neofetch'
alias clean='paru -c'
alias cd='z'

# a function to install programs, either via Pacman or Paru/AUR.
function install () {
  if [[ "$1" == "s" ]]
  then
    sudo pacman -S $2
  elif [[ "$1" == "p" ]]
  then
    paru -S $2
  else
    echo "Please select whether to install via Pacman (s) or Paru/AUR (p)."
    echo "Example: 'install s (package-name)' for Pacman."
  fi
}

# a function to remove packages.
function remove () {
	paru -R $1
}

# An alias to help change the background easier and simplify code elsewhere in other configs (mainly the hyprland config).
function bg () {
	swww img Pictures/bg/bg$1.jpg | wal -i Pictures/wallpaper/bg$1.jpg && ./.config/waybar/launch.sh
}

# An alias to update the system either via Pacman (only system software) or through Paru/AUR (other software).
function upd () {
	if [[ "$1" == "s" ]]
	then
		sudo pacman -Syu
	elif [[ "$1" == "p" ]]
	then
		paru -Syu
  elif [[ "$1" == "sp" || "ps" ]]
  then
    sudo pacman -Syu
    paru -Syu
	else
    echo "Please select whether to update via Pacman (s) or Paru/AUR (p) or for Both (sp)."
    echo "Example: 'upd s' for Pacman."
	fi
}

# A compile and run C file alias.
function runc () {
  gcc $1.c -o $1 && ./$1 && rm $1
}

# A compile and run a c++ file alias.
function runcpp () {
  g++ $1.cpp -o $1 && ./$1
}

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh

# adding zoxide
eval "$(zoxide init bash)"
