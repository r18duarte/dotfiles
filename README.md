# dotfiles by rd
Made with [dotbot](https://github.com/anishathalye/dotbot). Which is a great tool to use, made this way simpler to backup.

*Install script:* 

    git clone https://github.com/r18duarte/dotfiles .dotfiles && cd .dotfiles && ./install
    
   

These are my dotfiles and settings that I've made for me over time.


## Configs that I made
- [Alacritty](https://github.com/r18duarte/dotfiles#alacritty)
- [fish](https://github.com/r18duarte/dotfiles#fish)
- [VIM](https://github.com/r18duarte/dotfiles#vim)


## VIM
My .vimrc is quite long but I do have it all in a single file instead of
multiple and almost everything is commented. I have folds for each part of the
config and plugin config. 

Needed VIM > 9.0, vim-plugged (plugin manager) checks if it's present on the
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
My [Alacritty](https://github.com/alacritty/alacritty) config has FISH shell as default and Tomorrow-night theme to match VIM.



## fish
[fish](https://github.com/fish-shell/fish-shell) stands for **F**riendly **I**nteractive **SH**ell, fish offers a command-line interface focused on usability and interactive use. Unlike other shells, fish does not follow the POSIX standard, but still uses roughly the same model.

My config ignores the fish welcome message and shows a neofech when opened, also sets it as an xterm256color so CLI can display colors right.
