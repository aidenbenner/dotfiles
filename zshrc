# Borrowed from https://github.com/lpan/dotfiles/blob/master/files/desktop/.zshrc
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Antigen
source $HOME/.antigen/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions

antigen theme robbyrussell

# Tell antigen that you're done.
antigen apply

# Minimalist theme
ZSH_THEME="wezm"

# manually set your language environment
export LANG=en_US.UTF-8

DEFAULT_USER='aiden'

# If not running interactively, do not do anything
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux


if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
