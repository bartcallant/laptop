#!/bin/bash

# Path to your oh-my-zsh installation.
export ZSH=/Users/bart.callant/.oh-my-zsh

ZSH_THEME="agnoster"

HYPHEN_INSENSITIVE="true"

COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

source ~/.aliases
source ~/.functions

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

export PATH=$PATH:$(go env GOPATH)/bin
export GOPRIVATE=gitlab.com/*

export NPM_TOKEN=
export COMPOSER_GITLAB_COM_TOKEN=
export GITLAB_PRIVATE_TOKEN=

# pnpm
export PNPM_HOME="/Users/bart.callant/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
# pnpm end

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/bart.callant/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
