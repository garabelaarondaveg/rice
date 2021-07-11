#!/bin/sh

export LANG=en_US.UTF-8
export TERM=xterm-256color
export EDITOR='nvim'
export TERMINAL="st"
export BROWSER="brave"
export ARCHFLAGS="-arch x86_64"
export PATH=/usr/local/sbin:/usr/sbin:/usr/local/bin:/usr/bin:~/.emacs.d/bin:/bin
source ~/.config/zsh/zsh_aliases
source ~/.config/zsh/zsh_vimmode
source ~/.config/zsh/zsh_custom
source ~/.config/zsh/zsh_plugins

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)   # Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.config/zsh/zsh_history

# Enable colors and change prompt:
autoload -U colors && colors  # Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
setopt autocd   # Automatically cd into typed directory.
stty stop undef   # Disable ctrl-s to freeze terminal.
setopt interactive_comments

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

#eval "$(starship init zsh)"
