#!/bin/bash -x
sudo apt-get install python-dev python-pip python-psutil stow git libgit2-dev
pip install --user git+git://github.com/Lokaltog/powerline
LIBGIT2VER=$(dpkg-query --showformat='${source:Version}\n' --show libgit2-0)
LIBGIT2VER=${LIBGIT2VER%-*}
pip install --user pygit2==$LIBGIT2VER

stow -t ~ bash powerline tmux vim
fc-cache -vf ~/.fonts

