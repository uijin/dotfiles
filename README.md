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

### Use Git secret

Copy shell script `git-secret` to `~/bin` or `/usr/local/bin` or some directory in your PATH.
GPG key pairs are required, and key type `Ed25519` is recommend.

- [git-secret](https://git-secret.io/) ([GitHub](https://github.com/sobolevn/git-secret#git-secret))
- [Creating newer ECC keys for GnuPG](https://www.gniibe.org/memo/software/gpg/keygen-25519.html) (Ed25519)
- [GPG 密钥的创建、管理和使用](https://blog.starryvoid.com/archives/348.html) (RSA)
