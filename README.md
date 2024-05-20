# What is this??
This is a github repository of my personal Arch Linux Hyprland setup.

# Who is this for??
Myself, of course.

# But What are the Dependancies??
Of course, it's git, stow, hyprland, kitty, waybar!!!
aka do:
`
sudo pacman -S git foot nvim zoxide ranger rofi-lbonn-wayland-git && paru -S hyprland stow waybar vesktop-bin
`

# What if I dont have paru?
Do the following in your terminal (as I'm assuming you are on arch):
`
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
`

# But how do I actually use the bloody thing??
Simple!!

1. 
`
cd
git clone --recurse-submodules https://github.com/Quil180/dotfiles.git
`
2.
`
cd dotfiles/
`
3.
`
stow .
`
4. Enjoy!

