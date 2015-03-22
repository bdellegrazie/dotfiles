# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# set PATH so it includes user's private .local/bin if it exists
[ -d "$HOME/.local/bin" ] && case ":$PATH:" in
  *":$HOME/.local/bin:"*) :;; # already present
  *) PATH="$HOME/.local/bin:$PATH" ;;
esac

# set PATH so it includes user's private bin if it exists
[ -d "$HOME/bin" ] && case ":$PATH:" in
  *":$HOME/bin:"*) :;; # already present
  *) PATH="$HOME/bin:$PATH" ;;
esac

# rbenv
[ -d "$HOME/.rbenv/bin" ] && case ":$PATH:" in
  *":$HOME/.rbenv/bin:"*) :;;
  *) PATH="$HOME/.rbenv/bin:$PATH"
     eval "$(rbenv init -)"
   ;;
esac

# Go
[ -d "$HOME/tools/go" ] && case ":$PATH:" in
  *":$HOME/tools/go/bin:"*) :;;
  *) PATH="$PATH:$HOME/tools/go/bin"
     export GOROOT=$HOME/tools/go
   ;;
esac

# Maven
[ -d "$HOME/tools/apache-maven-3.2.5/bin" ] && case ":$PATH:" in
  *":$HOME/tools/apache-maven-3.2.5/bin:"*) :;;
  *) PATH="$PATH:$HOME/tools/apache-maven-3.2.5/bin" ;;
esac

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

