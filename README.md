# Neovim configuration

My Neovim looks like this:

![My Neovim Screenshot](screenshot.png)

## Features

As a plugin manager [packer](https://github.com/wbthomason/packer.nvim) is
used. Completion, Language Server Protocol support and other kinds of magic
are provided by [coc](https://github.com/neoclide/coc.nvim). As a color
scheme [Tokyo Night](https://github.com/folke/tokyonight.nvim) is set.

## Extensions

The following coc extensions are recommended:

- [coc-clangd](https://github.com/clangd/coc-clangd)
- [coc-explorer](https://github.com/weirongxu/coc-explorer)
- [coc-git](https://github.com/neoclide/coc-git)
- [coc-json](https://github.com/neoclide/coc-json)
- [coc-pyright](https://github.com/fannheyward/coc-pyright)
- [coc-rust-analyzer](https://github.com/fannheyward/coc-rust-analyzer)
- [coc-sumneko-lua](https://github.com/xiyaowong/coc-sumneko-lua)
- [coc-texlab](https://github.com/fannheyward/coc-texlab)
- [coc-yaml](https://github.com/neoclide/coc-yaml)

## How to install

At first, packer should be intslled with the following Bash command:

``` bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

All required Neovim plugins could be installed then with the following
Neovim command:

``` vim
:PackerInstall
```

Any required coc extension could be intslled with the following Neovim
command:

``` vim
:CocInstall <coc-extension-name>
```

At last, Haskell Language Server could be installed with
[GHCup](https://www.haskell.org/ghcup/).
