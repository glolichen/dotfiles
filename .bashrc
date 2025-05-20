#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"
export PATH="$PATH:/home/jayden/opt/cross/bin/:/home/jayden/miniconda3/bin/"

cowname=$(ls /usr/share/cowsay/cows/ | xargs shuf -n1 -e)
cowname=${cowname::-4}

echo "($cowname)"

fortune | cowsay -f $cowname
unset cowname

. "$HOME/.local/share/../bin/env"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jayden/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jayden/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jayden/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jayden/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

