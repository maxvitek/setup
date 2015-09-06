# bashrc
. ~/.bashrc

# bash aliases
. ~/.bash_aliases

# tmux, don't clobber my path
if [[ $OSTYPE == 'darwin13' ]]; then
    if [ -f /etc/profile ]; then
        PATH=""
        source /etc/profile
    fi
fi

# declare editor
export EDITOR='vim'

# colorize terminal
export TERM=xterm-256color
export CLICOLOR=1

# colorize ls
export LSCOLORS=GxFxCxDxBxegedabagaced

# colorize grep
export GREP_OPTIONS='--color=always'
export GREP_COLOR='1;32'

# pyenv
if [ -d ~/.pyenv ]; then
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"
fi

# get python
get_python() {
    if [ -d ~/.pyenv ]; then
        pyenv version | awk '{print$1}'
    else
        which python
    fi
}

# git branch
parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# get OS flavor
get_os_flavor() {

    cat /etc/lsb-release | sed 's/=/ /g' | awk '{print$2}' | sed ':a;N;$!ba;s/\n/ /g' | awk '{print$1" "$2}'
}

# prompt

RESET="\[\e[0m\]"
if [[ $OSTYPE == 'darwin13' ]]; then    
    # colorize prompt
    FRAME="$RESET\[\e[32m\]"
    INFO="\[\e[33m\]\[\e[1m\]" 

elif [[ $OSTYPE == 'linux-gnu' ]]; then
    # colorize prompt
    FRAME="$RESET\[\e[34m\]"
    INFO="\[\e[37m\]\[\e[1m\]"

elif [[ $OSTYPE == 'linux-gnueabihf' ]]; then
    # colorize prompt
    FRAME="$RESET\[\e[35m\]"
    INFO="\[\e[32m\]\[\e[1m\]"

elif [[ $OSTYPE == 'linux-gnueabi' ]]; then
    # colorize prompt
    FRAME="$RESET\[\e[33m\]"
    INFO="\[\e[31m\]\[\e[1m\]"
fi

PROMPT="$FRAME($INFO\!$FRAME)---> $RESET"
export PS1="\n$FRAME<$INFO\u$FRAME($INFO\$(get_python)$FRAME)>-<$INFO\H$FRAME($INFO\$(get_os_flavor)$FRAME):$INFO\w$FRAME>-<${INFO}git$FRAME($INFO\$(parse_git_branch)$FRAME)>\n$PROMPT"
export PS2="$FRAME> $RESET"

