#!/bin/bash -ex
sudo apt-get install -y \
 fonts-powerline \
 git \
 powerline \
 python-dev \
 python3-dev \
 python-pip \
 python3-pip \
 python-powerline \
 python3-powerline \
 python-psutil \
 python3-psutil \
 python-pygit2 \
 python3-pygit2 \
 python-virtualenv \
 python3-venv \
 stow \
 vim-nox \
 vim-addon-manager \
 vim-editorconfig \
 vim-syntax-docker
stow -t ~ bash quilt tmux vim
stow -t ~/.config powerline
vim-addons install dockerfile editorconfig powerline
systemctl --user enable powerline-daemon.service
systemctl --user start powerline-daemon.service
