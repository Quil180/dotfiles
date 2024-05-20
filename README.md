# What is this??
This is a github repository of my personal Arch Linux Hyprland setup.

# Who is this for??
Myself, of course.

# But What are the Dependancies??
Of course, it's git, stow, hyprland, kitty, waybar!!!
aka do:
```sudo pacman -S git foot nvim zoxide ranger rofi-lbonn-wayland-git && paru -S hyprland stow waybar vesktop-bin``` 

# What if I dont have paru?
Do the following in your terminal (as I'm assuming you are on arch):
```
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

# But how do I actually use the bloody thing??
Simple!!

1. Git clone the repo into your ```~``` folder.
2. CD into ```dotfiles/```
3. Use the command ```stow .``` in that folder.
4. Enjoy!

