#!/usr/bin/bash

if [ ! -f $HOME/.local/share/nvim/site/pack/packer ]; then
    echo Installing...
        git clone -q --depth 1 https://github.com/wbthomason/packer.nvim\
        ~/.local/share/nvim/site/pack/packer/start/packer.nvim
        nvim +PackerSync
    else
        echo Packer is already installed. Open Neovim and run \`PackerSync\`
fi

