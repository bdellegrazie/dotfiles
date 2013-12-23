#!/bin/bash -x
sudo apt-get install -y python-dev python-pip python-psutil stow git libgit2-dev vim-nox
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall
pip install --user --editable git+git://github.com/Lokaltog/powerline#egg=powerline --source ~/.vim/bundle
LIBGIT2VER=$(dpkg-query --showformat='${source:Version}\n' --show libgit2-0)
LIBGIT2VER=${LIBGIT2VER%-*}
pip install --user pygit2==$LIBGIT2VER

stow -t ~ bash powerline tmux vim
fc-cache -vf ~/.fonts

