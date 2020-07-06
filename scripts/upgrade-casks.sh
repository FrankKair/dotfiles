#!/bin/sh

CASKS=$(brew cask list)
for caskname in $CASKS
do
  brew cask upgrade "$caskname"
done
