# dotfiles by rd
These are my dotfiles and settings that I've made for me over time, also 
contains my better discord plugin list that I try to keep updated

Still learning shell scripts so this repo should be on ~/dotfiles/ to work
properly for the meantime

## Configs that I made
- [VIM](https://github.com/r18duarte/dotfiles#vim)
- [Openbox (Archcraft base)](https://github.com/r18duarte/dotfiles#openbox)
- [Alacritty](https://github.com/r18duarte/dotfiles#alacritty)
- [fish](https://github.com/r18duarte/dotfiles#fish)
- [Polybar (inside Openbox config folder)](https://github.com/r18duarte/dotfiles#polybar)
- [Rofi (still no changes made from default ArchCraft)](https://github.com/r18duarte/dotfiles#rofi)
- [Plank apps](https://github.com/r18duarte/dotfiles#plank)
- [Spicetify (spotify mods)](https://github.com/r18duarte/dotfiles#spicetify)

## VIM
My .vimrc is quite long but I do have it all in a single file instead of
multiple and almost everyline is commented. I have folds for each part of the
config and plugin config. 

Needed VIM > 8.1, vim-plugged (plugin manager) checks if it's present on the
device if not it will download it self, do :PlugInstall to install plugins.

Plugin list below, lighline configured, undodir on, compile and run from VIM and
you can also delete the executable if needed (The executable will be compiled
with the file name).

To-Do list for VIM
- [ ] Add a file with all keybinds for new users
- [ ] Make it simpler / Optimise it

### Plugins
- [vim-rainbow](https://github.com/frazrepo/vim-rainbow)
- [Lightline](https://github.com/itchyny/lightline.vim)
- [NERDTree](https://github.com/preservim/nerdtree)
- [NERDTree-syntax-highlight](https://github.com/tiagofumo/vim-nerdtree-syntax-highlight)
- [vim-devicons](https://github.com/ryanoasis/vim-devicons)
- [bufexplorer](https://github.com/jlanzarotta/bufexplorer)
- [pear-tree](https://github.com/tmsvg/pear-tree)
- [syntastic](https://github.com/vim-syntastic/syntastic)
- [vim-polygot](https://github.com/sheerun/vim-polyglot)
- [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
<br/><br/>

YouCompleteMe install
> To get YouCompleteMe plugin running you need to build it yourself as it's not precompiled.
>
>location of the files: `~/.vim/plugged/youcompleteme` check [YouCompleteMe github](https://github.com/ycm-core/YouCompleteMe#linux-64-bit) for build instructions 
as you can compile it in order to work with multiple languages.


## Openbox
[Openbox](http://openbox.org/wiki/Main_Page) is my window manager at the moment, it's a stacking/floating window manager.

If you are planning to use my configs please bear in mind that I have it
configured with xrandr to match my computer and display output, do `xrandr -q`
to see your displays and change it accordingly, if you only use one display you
can remove the if statement and use only the xrandr command.



## Alacritty
My [Alacritty]() config has FISH shell as default and Tomorrow-night theme to match VIM.



## fish
[fish]() stands for **F**riendly **I**nteractive **SH**ell, fish offers a command-line interface focused on usability and interactive use. Unlike other shells, fish does not follow the POSIX standard, but still uses roughly the same model.

My config ignores the fish welcome message and shows a neofech when opened, also sets it as an xterm256color so CLI can display colors right.


## Polybar
My [Polybar]() folder is inside Openbox config folder, why you may ask yourself, because of diferent window manager, I'm a new arch user and as such I still have so much to explore and making Polybar configs stay inside openbox folder there's no way the bar I made for Openbox shows on another window manager.

I have two bars running on this config, default one on my laptop screen and the extended on my second screen. The difference between bars is minimal, but there still is a diference because of my use-case, that is when I'm using my second monitor it's always on the same port (DP) and I've got it "docked" (ethernet and charger connected) and because of that I've removed brightness and battery status from the second bar, everything else is the same.

Default/Laptop bar:
![Polybar Laptop Bar](https://user-images.githubusercontent.com/27080259/155984497-61aa6dda-a276-4db0-a698-42f7c22a5c9a.png)

External screen bar:
![External screen polybar](https://user-images.githubusercontent.com/27080259/155984637-80fa7eb3-e5b1-4d2f-af37-51a0cbf0ecf2.png)

Modules on left side:
- Openbox Desktops 
- CPU usage 
- RAM Usage (click opens htop) 
- Keyboard Indicator (hidden normally shows when capslock is on)

Modules on middle:
- Date and time

Modules right side:
- Volume (scroll to increase/decrease volume, click to mute)
- Brightness (only on laptop because it's the only one you can controll)
- Wireless - Wireless speed (click to open network manager rofi, shows when active both bars)
- Ethernet - Ethernet speed (shows when active both bars)
- Battery (only laptop)
- Tray Icons (enabled on both bars but shows on external bar if it's running)

## ROFI
[Rofi](https://github.com/davatorium/rofi) is what I use to show different menus as a GUI. I use the defaults that came with archcraft.

Apps:
- Launcher (super /// alt + F1)
- Power menu (super + x)
- Screenshot menu (super + s)
- Network manager (super + n)
- Runner (super + r)

## Plank
[Plank](https://github.com/ricotz/plank) is the dock that I use, only reason I have this folder here is for the apps saved on my bar.

## Spicetify
[Spicetify](https://github.com/spicetify/spicetify-cli) is a way to spice up spotify, not sure if the changes I made inside spotify are saved here but they probably are.
