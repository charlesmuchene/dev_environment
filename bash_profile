parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export PS1="\u 😎  \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

alias edit_bash='nano ~/.bash_profile'
alias view_bash='cat ~/.bash_profile'
alias save_bash='source ~/.bash_profile'