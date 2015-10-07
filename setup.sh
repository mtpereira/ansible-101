#!/usr/bin/env bash

set -eu

function brew_installed { brew list -1 | grep -q -E "^$1$" ; }
function brew_cask_installed { brew cask list -1 | grep -q -E "^$1$" ; }
function brew_cask_tapped { brew tap | grep -q -E "^$1$" ; }

function _stat {
  if [ $(which stat) == "/usr/bin/stat" ]; then
    stat -f "%Su" $@
  else
    stat -c "%U" $@
  fi
}

function _run {
  local cmd="${1}"
  local cmd_owner=$(_stat $(command -v "${cmd}"))
  shift

  if [ "$cmd_owner" = "$USER" ]; then
    echo "==> Running ${cmd} $@..."
    "${cmd}" $@
  else
    echo "==> Requesting password for sudo ${cmd} $@..."
    sudo "${cmd}" $@
  fi
}

_run brew update

brew_installed python || _run brew install python

_run pip install --upgrade pip

_run pip install ansible==1.9.3

brew_cask_tapped caskroom/cask/brew-cask || _run brew install caskroom/cask/brew-cask

brew_cask_installed virtualbox || _run brew cask install virtualbox

brew_cask_installed vagrant || _run brew cask install vagrant
