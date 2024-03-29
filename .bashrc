# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

set -o vi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ks='ls -CF'
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias open='pcmanfm-qt' 
alias gui='sudo service lightdm start'
alias cs='setxkbmap -option caps:swapescape'
alias gh='history|grep'
alias left='ls -t -1'
alias ..='cd ..'
alias e='exit'
alias c='clear'
alias count='find . -type f | wc -l'
alias tcn='mv --force -t ~/.local/share/Trash '
alias ud='sudo apt-get update && sudo apt-get upgrade'
alias autorm='sudo apt autoremove'
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%m-%d-%Y"'

#python Aliases
alias ve='python3 -m venv ./venv'
alias va='source ./venv/bin/activate'
alias vd='deactivate'
alias python='python3'
alias pip='pip3'

#django commands
alias djrs='python manage.py runserver'
alias djmm='python manage.py makemigrations'
alias djm='python manage.py migrate'
alias djs='python manage.py shell'

#vim Aliases
alias vi=vim
alias svi='sudo vi'
alias edit='vim'
alias bashrc='vim ~/.bashrc'
alias vimrc='vim ~/repos/dotfiles/vimrc'

#system Aliases
alias root='sudo -i'
alias su='sudo -i'
alias reboot='sudo reboot'
alias poweroff='sudo poweroff'
alias suspend='systemctl suspend'
alias shutdown='sudo shutdown'
alias myip="curl http://ipecho.net/plain; echo"
alias www='python -m SimpleHTTPServer 8000'
alias speed='speedtest-cli --server 2406 --simple'
alias updis='sudo do-release-upgrade'

#FilePath Aliases
alias nf='neofetch'
alias repos='cd /home/kxn/repos/'
alias resume='cd /home/kxn/repos/resume/ && va && code .'
alias reposEx='cd /home/kxn/repos/ && open .'
alias downloads='cd /home/kxn/Downloads/'
alias documents='cd /home/kxn/Documents/ && start .'
alias documentsEx='cd /home/kxn/Documents/'
alias downloadsEx='cd /home/kxn/Downloads/ && explorer.exe .'
alias drive='chromium-browser https://drive.google.com/drive/my-drive &'
alias gith='chromium-browser https://github.com/kxnaylorCLE216 &'
alias ghub='gitkraken &'
alias google='chromium-browser&'

#Git Aliases
alias gac='git add . && git commit'
alias gs='git status'
alias gp='git push --all'
alias gcall='git checkout .'
alias gg='git log --oneline --graph --all --decorate'

gc() {
    echo "committing: $@"
    for term in $@; do
        app="$app $term"
        done
	sudo apt-get install "$app"
}

goo() {
    search=""
    echo "Googling: $@"
    for term in $@; do
        search="$search%20$term"
        done
        xdg-open "http://www.google.com/search?q=$search" &
}

uddot() {
    echo "pushing the dot files"
    for term in $@; do
        message="$message $term"
	done
	cd ~/repos/dotfiles/		
	git status
	git add .
	git commit -m "$message"
	git push origin master
	
}

dstat() {
    echo "checking the status"
    $curr = pwd
	cd ~/repos/dotfiles/		
	git status
	cd $curr
}

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
