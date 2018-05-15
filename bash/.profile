# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# set PATH so it includes user's private .local/bin if it exists
[[ -d "$HOME/.local/bin" ]] && case ":$PATH:" in
  *":$HOME/.local/bin:"*) :;; # already present
  *) PATH="$HOME/.local/bin:$PATH" ;;
esac

# set PATH so it includes user's private bin if it exists
[[ -d "$HOME/bin" ]] && case ":$PATH:" in
  *":$HOME/bin:"*) :;; # already present
  *) PATH="$HOME/bin:$PATH" ;;
esac

# rbenv
[[ -d "$HOME/.rbenv/bin" ]] && case ":$PATH:" in
  *":$HOME/.rbenv/bin:"*) :;;
  *) PATH="$HOME/.rbenv/bin:$PATH"
     eval "$(rbenv init -)"
   ;;
esac

# Go
[[ -d "$HOME/tools/go" ]] && case ":$PATH:" in
  *":$HOME/tools/go/bin:"*) :;;
  *) PATH="$PATH:$HOME/tools/go/bin"
     export GOROOT=$HOME/tools/go
   ;;
esac

# Maven
[[ -d "$HOME/tools/maven/bin" ]] && case ":$PATH:" in
  *":$HOME/tools/maven/bin:"*) :;;
  *) PATH="$PATH:$HOME/tools/maven/bin" ;;
esac

# Gradle
[[ -d "$HOME/tools/gradle/bin" ]] && case ":$PATH:" in
  *":$HOME/tools/gradle/bin:"*) :;;
  *) PATH="$PATH:$HOME/tools/gradle/bin" ;;
esac

# Node Version Manager
[[ -d "$HOME/.nvm" ]] && case "$NVM_DIR" in
  "$HOME/.nvm") :;;
  *) export NVM_DIR="$HOME/.nvm"
     [[ -s "$NVM_DIR/nvm.sh" ]] && . "$NVM_DIR/nvm.sh"
     [[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion
  ;;
esac

[ -d "$HOME/tools/platform-tools" ] && case ":$PATH:" in
   *":$HOME/tools/platform-tools:"*) :;;
   *) PATH="$HOME/tools/platform-tools:$PATH" ;;
esac

# [[ -x "$HOME/bin/kubectl" ]] && . "$($HOME/bin/kubectl completion bash)"

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi
