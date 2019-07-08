Setup
=====

## VIM plug-in

1. Install Vundle first
    ```
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    ```
2. Open VIM, execute `:PluginInstall`

### Reference:

- https://github.com/VundleVim/Vundle.vim
- https://github.com/flazz/vim-colorschemes
- https://blog.longwin.com.tw/2009/03/choose-vim-color-scheme-2009/
- https://vimcolors.com/

## Git configuration

Add include command at beginning of .gitconfig
```
[Include]
    path = dotfiles/gitconfig.d/common
```

Set additional options
```
git config --global --add difftool.prompt false
```
