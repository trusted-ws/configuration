export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'
alias grep='grep --color'

# Alias for Detect It Easy
alias die='/home/murilo/Documents/Programs/die_lin64_portable/die.sh'
alias diec='/home/murilo/Documents/Programs/die_lin64_portable/diec.sh'

# Alias for Python (redirect python to python3)
#alias python='python3'
alias python='ptpython'

# Create and enter in the directory:
makedir() { mkdir "$@" && cd "$@"; }
alias mkd='makedir'

# hhighlighter script source
source ~/.h.sh

# Alias for John the Ripper
alias john2='/usr/local/bin/john/john'
alias sl='sl -e'

export CLICOLOR=1

# Name to show (user/custom)
NAME="$USER"
#NAME="dummy"

# Function to show non zero exit code.
__prompt_command() {
    local EXIT="$?"
    if [[ $- == *i* ]]; then
        if [ $EXIT != 0 ]; then
            PS1="\$NAME\[$(tput sgr0)\]\[\e[31m\] \[\e[m\]\[\e[31m\]:\[\e[m\]\[\e[31m\]:\[\e[m\] \[\e[32m\]\w\[\e[m\] \[\e[34m\]\[\033[38;5;9m\]\$?\[$(tput sgr0)\] \[\e[34m\]»\[\e[m\] "
        else
            PS1="\$NAME\[$(tput sgr0)\]\[\e[31m\] \[\e[m\]\[\e[31m\]:\[\e[m\]\[\e[31m\]:\[\e[m\] \[\e[32m\]\w\[\e[m\] \[\e[34m\]»\[\e[m\] "
        fi

        # Fix virtual env prompt
        if [ -z "$VIRTUAL_ENV_DISABLE_PROMPT" ] ; then
            _OLD_VIRTUAL_PS1="$PS1"

            if [ "`basename \"$VIRTUAL_ENV\"`" = "__" ] ; then
                # special case for Aspen magic directories
                # see http://www.zetadev.com/software/aspen/
                PS1="[`basename \`dirname \"$VIRTUAL_ENV\"\``] $PS1"
            elif [ "$VIRTUAL_ENV" != "" ]; then
                PS1="(`basename \"$VIRTUAL_ENV\"`) $PS1"
            fi
        fi
    fi
}

export LSCOLORS=cxgxfxexbxegedabagacad
export EDITOR='vim'

# Export PS1
if [[ $- == *i* ]]; then
    export PS1="\$NAME\[$(tput sgr0)\]\[\e[31m\] \[\e[m\]\[\e[31m\]:\[\e[m\]\[\e[31m\]:\[\e[m\] \[\e[32m\]\w\[\e[m\] \[\e[34m\]\[\033[38;5;9m\]\$?\[$(tput sgr0)\] »\[\e[m\] "
fi

# PATH FOR ANDROID STUDIO
export PATH=$PATH:$HOME/Downloads/android-studio/android-studio/bin

# PATH FOR INTELLIJ IDEA
export PATH=$PATH:$HOME/Downloads/idea-IC-203.7717.56/bin

# PATH FOR GHIDRA
export PATH=$PATH:$HOME/Documents/Programs/jdk-11.0.11/bin


# Alias for apktool
alias apktool='java -jar /home/murilo/Documents/Programs/apktool-2.5.1-7c2ea3-SNAPSHOT-small.jar'

alias dokcer='docker'

# Colorizer
alias bat='batcat'
alias grep='/home/murilo/Documents/Programs/bat-extras/src/batgrep.sh'
alias man='/home/murilo/Documents/Programs/bat-extras/src/batman.sh'
alias diff='/home/murilo/Documents/Programs/bat-extras/src/batdiff.sh'

# Alias for Emacs
#alias emacs='emacs -nw'


PROMPT_COMMAND=__prompt_command

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
