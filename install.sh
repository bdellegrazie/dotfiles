#!/bin/bash -ex
sudo apt-get install -y \
 direnv \
 fonts-powerline \
 git \
 powerline \
 python3-dev \
 python3-pip \
 python3-powerline \
 python3-psutil \
 python3-pygit2 \
 python3-venv \
 stow \
 vim-nox \
 vim-addon-manager \
 vim-editorconfig \
 vim-syntax-docker
stow -t ~ direnv bash quilt tmux vim
stow -t ~/.config powerline
vim-addons install dockerfile editorconfig powerline
systemctl --user enable powerline-daemon.service
systemctl --user start powerline-daemon.service
