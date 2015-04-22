#!/usr/bin/env bash

if [ -z $PS1 ]; then
  echo "The installation of dotfiles can run only in the interactive shell mode."
else
  git clone https://github.com/PetrKohut/dotfiles.git ~/.tempdotfiles --depth 1
  rm -rf ~/.tempdotfiles/.git
  mv ~/.tempdotfiles/.[^.]* ~/
  rm -rf ~/.tempdotfiles
fi
