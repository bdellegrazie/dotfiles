!/bin/bash

sudo apt-get install python-pip python-psutils stow git libgit2-dev
pip install --user git+git://github.com/Lokaltog/powerline
pip install --user pygit2

stow -t ~ bash powerline tmux vim
fc-cache -vf ~/.fonts

