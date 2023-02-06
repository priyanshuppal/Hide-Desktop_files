#!/bin/bash


test=$(defaults read com.apple.finder CreateDesktop)


if [[ $test == 0 ]]
then
    defaults write com.apple.finder CreateDesktop -bool true; killall Finder
elif [[ $test == 1 ]]
then
    defaults write com.apple.finder CreateDesktop -bool false; killall Finder
fi
