DOTFILESDIR=$HOME"/.dotfiles"

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
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
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
    echo "- ${GREEN}Adding repos (tap)...${NOCOLOR}"
    brew tap homebrew/cask-fonts
    echo ""
    echo "- ${GREEN}Installing Formulas...${NOCOLOR}"
    brew install zsh git nvm
    brew install --cask font-victor-mono iterm2 postman google-chrome
fi
echo ""

echo "${MAGENTA}Dotfiles${NOCOLOR}"
echo ""
echo "- ${GREEN}Cloning pedroputz/osx-setup-dotfiles.git...${NOCOLOR}"
if [ ! -d "$DOTFILESDIR" ]; then
    git clone git@github.com:pedroputz/osx-setup-dotfiles.git "$DOTFILESDIR"
else
    cd "$DOTFILESDIR" && git pull && cd ~
fi

echo "${MAGENTA}Oh My ZSH${NOCOLOR}"
echo ""
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo ""

echo "- ${GREEN}Making links${NOCOLOR}"
rm -f ~/.gitconfig ~/.zshrc
ln -s .dotfiles/.gitconfig ~/.gitconfig
ln -s .dotfiles/.zshrc ~/.zshrc
