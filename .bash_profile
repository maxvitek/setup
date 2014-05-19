# tmux, don't clobber my path
if [ -f /etc/profile ]; then
    PATH=""
    source /etc/profile
fi

# declare editor
export EDITOR='mvim -v'

# added by Anaconda 1.9.2 installer
export PATH="/Users/maxvitek/anaconda/bin:$PATH"

# adding TeX stuff
export PATH="/usr/texbin:$PATH"

# colorize terminal
export TERM=xterm-256color
export CLICOLOR=1

# colorize ls
export LSCOLORS=GxFxCxDxBxegedabagaced

# colorize grep
export GREP_OPTIONS='--color=always'
export GREP_COLOR='1;32'

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
fi
PROMPT="$FRAME($INFO\!$FRAME)---> $RESET"
export PS1="\n$FRAME($INFO\u$FRAME)-($INFO\H$FRAME)-($INFO\w$FRAME)-(${INFO}jobs: \j$FRAME)\n$PROMPT"
export PS2="$FRAME> $RESET"
