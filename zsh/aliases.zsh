# default aliases
alias gph="git push origin \$(git_current_branch)"
alias gphf="git push -f origin \$(git_current_branch)"
alias gphnv="git push --no-verify origin \$(git_current_branch)"
alias gpl="git pull origin \$(git_current_branch)"
alias gplom="git pull origin master"
alias gst="git status"

alias ga="git add"
alias gc="git commit"
alias gac="git add . && git commit"

alias gco="git checkout"
alias gbr="git branch"
alias gdf="git diff"

alias ls="ls -lTahF"

alias showhiddenfiles="defaults write com.apple.finder AppleShowAllFiles TRUE"
alias hidehiddenfiles="defaults write com.apple.finder AppleShowAllFiles FALSE"
