# dotdot theme, which is totally ripped off junkfood, which is in turn totally ripped off Dallas theme

# get the current machine
DOTDOT_MACHINE_="%{$fg_bold[blue]%}%m%{$fg[white]%}%{$reset_color%}"

# get the current user
DOTDOT_CURRENT_USER_="%{$fg_bold[green]%}%n%{$reset_color%}"

# Grab the current filepath, use shortcuts: ~/Desktop
# Append the current git branch, if in a git repository: ~aw@master
DOTDOT_LOCA_="%{$fg[cyan]%}%~\$(git_prompt_info)%{$reset_color%}"

# git prompt prefix
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}@%{$fg_bold[white]%}"

# reset colors in the end
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

# clean branch symboling
ZSH_THEME_GIT_PROMPT_CLEAN="👌 👌"

# dirty branch symboling
ZSH_THEME_GIT_PROMPT_DIRTY="💩 💩"

# final prompt
PROMPT="( $DOTDOT_CURRENT_USER_ 👉  $DOTDOT_MACHINE_ ) {$DOTDOT_LOCA_ } 🚀  "
