#!/bin/zsh

vared -p "Enter commit message: " -c message

printf "\e[33m\nBuilding project...\e[39m\n"
hugo -d ../jwhiteford.github.io

printf "\\e[33m\nPushing to jwhiteford.github.io repository...\e[39m\n\n"
cd ../jwhiteford.github.io
git add .
git commit -m "$message"
git push origin master
printf "\e[32m\nSuccessfully deployed the website!\e[39m"

printf "\e[33m\n\nNow pushing latest changes to InlineIndustriesInc repository...\e[39m\n\n"
cd ../InlineIndustriesInc
git add .
git commit -m "$message"
git push origin master
printf "\033[0;32m\nSuccessfully pushed changes to the repository!\e[39m\n"