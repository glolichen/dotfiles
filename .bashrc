#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"
export PATH="$PATH:/home/jayden/opt/cross/bin/"

cowname=$(ls /usr/share/cowsay/cows/ | xargs shuf -n1 -e)
cowname=${cowname::-4}

echo "($cowname)"

fortune | cowsay -f $cowname
unset cowname
