# What is this??
This is a github repository of my personal Arch Linux Hyprland setup.

# Who is this for??
Myself, of course.

# But What are the Dependancies??
Of course, it's git, foot, neovim, zoxide, ranger, rofi, hyprland, stow, waybar, and vesktop!!!
aka do:
```
sudo pacman -S git foot neovim zoxide ranger && paru -S hyprland-git stow waybar vesktop-bin rofi-lbonn-wayland-git
```

# What if I dont have paru already?
Do the following in your terminal (as I'm assuming you are on arch):
```
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

# But how do I actually use the bloody thing??
Simple!! Just follow the steps below.

1. 
```
cd
git clone --recurse-submodules https://github.com/Quil180/dotfiles.git
```

2. 
```
cd dotfiles/
```

3. 
```
stow .
```

4. Enjoy!

# Full command alltogether (not tested yet, though it should work)
```
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
sudo pacman -S foot neovim zoxide ranger  && paru -S hyprland-git stow waybar vesktop-bin rofi-lbonn-wayland-git
cd
git clone --recurse-submodules https://github.com/Quil180/dotfiles.git
cd dotfiles/
stow .
cd
echo Quil's Dotfiles have been succesfully installed!
```
