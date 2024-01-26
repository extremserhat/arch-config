#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ls='exa --header --long --git --icons' 
alias lst='exa --header --long --git --icons --tree --level=2' 
#PS1='\[ \e[31m  \A\e[0m\n \e[1;37;41m 󰥹 \e[0m\u \e[0;37m\e[0m \h \e[1;33m\ \w\ \e[0m\n \[\e[5;37m  \e[0m\]($CONDA_DEFAULT_ENV)'
# PS1='\[\033[1;36m\]\u\[\033[0m\]@\h \W\$ '

neofetch

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/serhat/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/home/serhat/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/home/serhat/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/home/serhat/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/serhat/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
    CONDA_ENV="\[\e[1;32m\](${CONDA_DEFAULT_ENV}) "
else
    if [ -f "/home/serhat/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/serhat/anaconda3/etc/profile.d/conda.sh"
        CONDA_ENV="\[\e[1;32m\](${CONDA_DEFAULT_ENV}) "
    else
        export PATH="/home/serhat/anaconda3/bin:$PATH"
        CONDA_ENV=""
    fi
fi
unset __conda_setup

# Set the PS1 prompt
PS1="\[\e[31m\]\A\e[0m\n\[\e[1;37;41m\] 󰥹 \[\e[0m\]\[\e[0;37m\]\u \[\e[0m\] \h ${CONDA_ENV}  \[\e[1;33m\]\w \[\e[0m\]\n\[\e[5;37m\]  \[\e[0m\]"

