NEWLINE=$'\n'

PROMPT="${NEWLINE}"
PROMPT+='%{$fg[green]%}%n %{$fg_bold[magenta]%}in %{$fg_bold[blue]%}%~ $(git_prompt_info)'
PROMPT+="${NEWLINE}%{$fg_bold[magenta]%}c:\\\>%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_DIRTY=" 👀"
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[magenta]%}on %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
