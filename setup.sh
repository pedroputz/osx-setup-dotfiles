#! /bin/bash

# colors
NOCOLOR=`tput sgr0`
GREEN=`tput setaf 2`
LGREEN=`tput bold; tput setaf 2`
YELLOW=`tput bold; tput setaf 3`
BLUE=`tput bold; tput setaf 4`
MAGENTA=`tput bold; tput setaf 5`

# Dirs
echo ""
echo "${GREEN}Welcome to the installation process :)${NOCOLOR}"

echo ""
echo "${YELLOW}The installer will use this dir: "
cd ~
pwd
echo "${NOCOLOR}"

echo "Homebrew is the first!"
if [[ ! "$(type -P brew)" ]]; then
    echo "- ${GREEN}Installing...${NOCOLOR}"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "- ${BLUE}Already installed!${NOCOLOR}"
fi

if [[ "$(type -P brew)" ]]; then
    echo "- ${GREEN}Updating...${NOCOLOR}"
    brew update
    echo "- ${GREEN}Analyzing...${NOCOLOR}"
    brew doctor
    echo "- ${GREEN}Installing Formulas...${NOCOLOR}"
    brew install git node
fi
echo ""
