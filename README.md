# dotfiles by rd
These are my dotfiles and settings that I've made for me over time, also 
contains my better discord plugin list that I try to keep updated

Still learning shell scripts so this repo should be on ~/dotfiles/ to work
properly for the meantime

## Configs that I made
- VIM
- Alacritty
- Openbox (Archcraft base)
- FISH 
- Polybar (inside Openbox config folder)
- Rofi (still no changes made from default ArchCraft)
- Plank apps
- Spicetify (spotify mods)

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

## Alacritty
My alacritty config has FISH shell as default and Tomorrow-night theme to match VIM.

## Openbox
[Openbox](http://openbox.org/wiki/Main_Page) is my window manager at the moment, it's a stacking/floating window manager.

If you are planning to use my configs please bear in mind that I have it
configured with xrandr to match my computer and display output, do `xrandr -q`
to see your displays and change it accordingly, if you only use one display you
can remove the if statement and use only the xrandr command
