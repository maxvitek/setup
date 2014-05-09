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
export GREP_COLOR='1;35;40'

# colorize prompt
hr=________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________
DIVIDER="${hr:0:${COLUMNS:-$(tput cols)}}"
export PS1="\[\e[34m\]$DIVIDER\n\[\e[32m\](\[\e[37;1m\]\u\[\e[0m\]\[\e[32m\])-(\[\e[37;1m\]\H\[\e[0m\]\[\e[32m\])-(\[\e[37;1m\]\w\[\e[0m\]\[\e[32m\])-(\[\e[37;1m\]jobs: \j\[\e[0m\]\[\e[32m\])\n(\[\[\e[37;1m\]!\!\[\e[0m\]\[\e[32m\])->\[\e[36m\]>\[\e[32;1m\]>\[\e[36;1m\]> \[\e[0m\]"
export PS2="\[\e[32m\])-> \[\e[0m\]"
