DOTFILESDIR=$HOME+"/.dotfiles"
SUBLIMETEXTDIR=$HOME+"/Library/Application\ Support/Sublime\ Text\ 3"

NOCOLOR=`tput sgr0`
GREEN=`tput setaf 2`
LGREEN=`tput bold; tput setaf 2`
YELLOW=`tput bold; tput setaf 3`
BLUE=`tput bold; tput setaf 4`
MAGENTA=`tput bold; tput setaf 5`

echo ""
echo "${GREEN}Welcome to the installation process :)${NOCOLOR}"

echo ""
echo "${YELLOW}The installer will use this dir: "
cd ~
pwd
echo "${NOCOLOR}"

echo "${MAGENTA}Homebrew${NOCOLOR}"
echo ""
if [[ ! "$(type -P brew)" ]]; then
    echo "- ${GREEN}Installing...${NOCOLOR}"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "- ${BLUE}Already installed!${NOCOLOR}"
fi

if [[ "$(type -P brew)" ]]; then
    echo ""
    echo "- ${GREEN}Updating...${NOCOLOR}"
    brew update
    echo ""
    echo "- ${GREEN}Analyzing...${NOCOLOR}"
    brew doctor
    echo ""
    echo "- ${GREEN}Installing Formulas...${NOCOLOR}"
    brew install git node
fi
echo ""

echo "${MAGENTA}Dotfiles${NOCOLOR}"
echo ""
echo "- ${GREEN}Cloning pedroputz/osx-setup-dotfiles.git...${NOCOLOR}"
if [ ! -d "$DOTFILESDIR" ]; then
    git clone git@github.com:pedroputz/osx-setup-dotfiles.git $DOTFILESDIR
else
    cd "$DOTFILESDIR" && git pull && cd ~
fi

echo ""
echo "- ${GREEN}Making links${NOCOLOR}"
rm -f ~/.gitconfig ~/.bash_profile ~/.bash_aliases
ln -s .dotfiles/.gitconfig ~/.gitconfig
ln -s .dotfiles/.bash_profile ~/.bash_profile
ln -s .dotfiles/.bash_aliases ~/.bash_aliases

echo ""
echo "${MAGENTA}Sublime Text Configuration${NOCOLOR}"
echo ""
echo "- ${GREEN}Cloning pedroputz/sublimetext-confs.git...${NOCOLOR}"
if [ ! -d "$SUBLIMETEXTDIR" ]; then
    git clone git@github.com:pedroputz/sublimetext-confs.git $SUBLIMETEXTDIR
else
    cd "$SUBLIMETEXTDIR" && git pull && cd ~
fi
echo ""
