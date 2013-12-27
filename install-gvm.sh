#!/bin/bash -x
sudo apt-get install -y binutils bison curl gcc git mercurial make
git clone https://github.com/moovweb/gvm.git ~/.gvm

cat > $HOME/.gvm/scripts/gvm <END_GVM
export GVM_ROOT=$HOME/.gvm
. \$GVM_ROOT/scripts/gvm-default
END_GVM

