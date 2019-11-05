# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# set PATH so it includes user's private bin if it exists
[[ -d "$HOME/bin" ]] && case ":$PATH:" in
  *":$HOME/bin:"*) :;; # already present
  *) PATH="$HOME/bin:$PATH" ;;
esac

# set PATH so it includes user's private .local/bin if it exists
[[ -d "$HOME/.local/bin" ]] && case ":$PATH:" in
  *":$HOME/.local/bin:"*) :;; # already present
  *) PATH="$HOME/.local/bin:$PATH" ;;
esac

# add poetry to path
[[ -d "$HOME/.poetry/bin" ]] && case ":$PATH:" in
  *":$HOME/.poetry/bin:"*) :;; # already present
  *) PATH="$HOME/.poetry/bin:$PATH" ;;
esac

# GnuPG Agent with SSH support
GPG_TTY=$(tty)
export GPG_TTY

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi
