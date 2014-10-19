echo ""
echo "Welcome to the installation process :)"

echo ""
echo "The installer will use this dir: "
cd ~
pwd
echo ""

echo "Homebrew is the first!"
if [[ ! "$(type -P brew)" ]]; then
    echo "- Installing..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "- Already installed!"
fi

if [[ "$(type -P brew)" ]]; then
    echo "- Updating..."
    brew update
    echo "- Analyzing..."
    brew doctor
    echo "- Installing Formulas..."
    brew install git node
fi
echo ""
