# default alias
alias gst="git status"
alias gpl="git pull origin \$(gitBranch)"
alias gph="git push origin \$(gitBranch)"

alias ga="git add"
alias gc="git commit"
alias gac="git add . && git commit"

alias gco="git checkout"
alias gbr="git branch"
alias gdf="git diff"

alias ls="ls -laF"


# colors in lists
export CLICOLOR=1
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"

# colors
NOCOLOR=`tput sgr0`
GREEN=`tput setaf 2`
LGREEN=`tput bold; tput setaf 2`
YELLOW=`tput bold; tput setaf 3`
BLUE=`tput bold; tput setaf 4`
MAGENTA=`tput bold; tput setaf 5`


function gitBranch() {
  branch=`git branch 2> /dev/null | grep -e ^* | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`

  if [ "$branch" ]; then
    echo "$branch";
  fi
}

function gitStatus() {
  status=`git status 2> /dev/null | tail -n1`

  if [ "$status" == "nothing to commit, working directory clean" ]; then
    echo " ${MAGENTA}on${NOCOLOR} ${LGREEN}$(gitBranch)${NOCOLOR}";
  elif [ "$status" ]; then
    echo " ${MAGENTA}on${NOCOLOR} ${YELLOW}$(gitBranch)*${NOCOLOR}";
  else
    echo "";
  fi
}

# command line
PS1="\n\[$GREEN\]\u\[$NOCOLOR\] \[$MAGENTA\]in\[$NOCOLOR\] \[$BLUE\]\w\[$NOCOLOR\]\[\$(gitStatus)\] \n\[$MAGENTA\]c:\\\>\[$NOCOLOR\] "
