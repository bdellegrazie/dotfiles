#!/bin/bash -x
sudo apt-get install -y python-dev python-pip python-psutil stow git vim-nox
sudo apt-get install -y libgit2-dev
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
pip install --user --editable git+https://github.com/Lokaltog/powerline.git#egg=powerline --source ~/.vim/bundle
vim +BundleInstall +qall
LIBGIT2VER=$(dpkg-query --showformat='${source:Version}\n' --show libgit2-0)
LIBGIT2VER=${LIBGIT2VER%-*}
pip install --user pygit2==$LIBGIT2VER
mkdir -p ~/.fonts ~/.fonts.conf.d ~/.config/fontconfig/conf.d
ln -sf ~/.vim/bundle/powerline/font/PowerlineSymbols.otf ~/.fonts/
ln -sf ~/.vim/bundle/powerline/font/10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
ln -sf ~/.vim/bundle/powerline/font/10-powerline-symbols.conf ~/.fonts.conf.d/
stow -t ~ bash powerline tmux vim
fc-cache -vf ~/.fonts

