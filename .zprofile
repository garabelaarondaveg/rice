#!bin/zsh

unsetopt PROMPT_SP

# Default programs:
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="brave"

# ~/ Clean Up
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XINITRC="${XDG_CONFIG_HOME:-$HOME/.config}/x11/xinitrc"
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"
export LESSHISTFILE="-"
export ANDROID_SDK_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/android"
export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"
export GIT_CONFIG="${XDG_CONFIG_HOME}/git/config"
export EMACS_HOME="${XDG_CONFIG_HOME}/emacs.d/init.el"
export CARGO_HOME="${XDG_DATA_HOME}/cargo"
export NPM_RC_FILES="${XDG_CONFIG_HOME}/npm"
export NPM_CACHE_FILES="${XDG_CACHE_HOME}/npm"
export GNUPGHOME="${XDG_DATA_HOME}/gnupg"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export USERXSESSION="$XDG_CACHE_HOME/x11/xsession"
export USERXSESSIONRC="$XDG_CACHE_HOME/x11/xsessionrc"
export ALTUSERXSESSION="$XDG_CACHE_HOME/x11/Xsession"
export ERRFILE="$XDG_CACHE_HOME/x11/xsession-errors"
