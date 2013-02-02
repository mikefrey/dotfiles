# prompt

source /usr/local/etc/bash_completion.d/git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=1

# show $ if there are stashed changes
export GIT_PS1_SHOWSTASHSTATE=1
# show % if there are untracked files
export GIT_PS1_SHOWUNTRACKEDFILES=1
# show < if there are unpulled changes, > if there are unpushed changes, or <> if there are both
export GIT_PS1_SHOWUPSTREAM=1

# for reference:
# \u is username
# \h is hostname
# \w is pathname
# __git_ps1 is the git prompt information
# rvm-prompt is the RVM prompt information
# $BOLD bolds text, \NC resets back to normal color
# 2> /dev/null swallows any errors
export PS1="\w\$(__git_ps1)$ "
