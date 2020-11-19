#!/bin/sh

CASKS=$(brew list --cask)
for caskname in $CASKS
do
  brew upgrade --cask "$caskname"
done
