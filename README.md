This repository contains my current NeoVim configuration files.

The file init.vim is the main configuration file and uses the files inside the
./plgs and ./themes folders to set everything up.

***

# Requirements

- Vim version 2.4 +
- Brew
- Node (for coc)
- Yarn (for sourcing coc)

***

# Installation

1) Install NeoVim. In OSX simply run:

```
    $ brew install neovim
```

2) Clone this repository into the folder ~/.config/nvim/:

```
    $ git@github.com:jucgonzalezes/nvim.git
```

3) Install vim-plug:

```
    $ sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"\
         /nvim/site/autoload/plug.vim --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

4) Start NeoVim:

```
    $ nvim
```

5) Inside NeoVim, run vim-plug to install the plugins:

```
    :PlugInstall
```
