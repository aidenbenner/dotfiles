alias rm='rm -iv' 
alias mv='mv -iv'
alias cp='cp -iv'

# cd 
alias cd..="cd .."
alias ..="cd .."

# ls 
alias sl="ls"
alias lsl="ls | less"
alias ll="ls -ah"

# Other 
alias mkdir="mkdir -p"
alias top="htop"

# Git 
alias gaa='git add -A'
alias gc='git commit'
alias gd='git diff --color=always | less -r'
alias gca='git commit --amend --reuse-message=HEAD'
alias gp='git push origin HEAD'
alias gs='git status'
alias glog="git log --pretty=format:'%C(yellow)%h%Creset %Cblue%an%Creset %s %Cgreen(%ar)%Creset %Cred%d%Creset'"
alias gpu='git pull origin HEAD'

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

alias c='clear'
alias l='ls'
alias ll='ls -la'
alias tmux='tmux -2'
alias octave='octave --no-gui'


# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

lcd () {
    cd $1
}
