#!/bin/bash -x
sudo apt-get install -y build-essential autoconf git libssl-dev libyaml-dev libreadline6 libreadline6-dev zlib1g zlib1g-dev
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
PLUGIN_DIR=~/.rbenv/plugins
mkdir -p $PLUGIN_DIR
pushd $PLUGIN_DIR >/dev/null
git clone https://github.com/sstephenson/ruby-build.git
git clone https://github.com/sstephenson/rbenv-vars.git
git clone https://github.com/sstephenson/rbenv-gem-rehash.git
git clone https://github.com/sstephenson/rbenv-default-gems.git
git clone https://github.com/tpope/rbenv-communal-gems.git
git clone https://github.com/chriseppstein/rbenv-each.git
git clone https://github.com/jf/rbenv-gemset.git
git clone https://github.com/rkh/rbenv-update.git
git clone https://github.com/rkh/rbenv-use.git
git clone https://github.com/rkh/rbenv-whatis.git
git clone https://github.com/tpope/rbenv-aliases.git
git clone https://github.com/ianheggie/rbenv-binstubs.git
git clone https://github.com/yyuu/rbenv-which-ext.git
popd >/dev/null
