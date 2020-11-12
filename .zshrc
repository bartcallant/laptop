#!/bin/bash

# Path to your oh-my-zsh installation.
export ZSH=/Users/bartcallant/.oh-my-zsh

ZSH_THEME="agnoster"

HYPHEN_INSENSITIVE="true"

COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
  git
  web-search
)

source $ZSH/oh-my-zsh.sh

source ~/.aliases
source ~/.functions

export N_PREFIX=$HOME/.n
export PATH=$N_PREFIX/bin:$PATH