# run setup.sh to set this up

# Interactive operation...
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
#
# Default to human readable figures
alias df='df -h'
alias du='du -h'
#
# Misc :)
alias less='less -r'                          # raw control characters
alias whence='type -a'                        # where, of a sort
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour
#
# Some shortcuts for different directory listings
os="$(uname -s)"
if [ "$os" == Darwin ]; then
  # Mac ls does not support color!
  alias ls='ls -hF'
  alias dir='ls'
  alias vdir='ls -l'
else
  alias ls='ls -hF --color=tty'                 # classify files in colour
  alias dir='ls --color=auto --format=vertical'
  alias vdir='ls --color=auto --format=long'
fi
alias ll='ls -l'                              # long list
alias la='ls -A'                              # all but . and ..
alias l='ls -CF'                              #
alias cd..="cd .."

#export EXINIT="se nu ai ts=4"
export EXINIT="set number tabstop=4 autoindent ignorecase hlsearch"

# function settitle
settitle ()
{
  echo -ne "\e]2;$@\a\e]1;$@\a";
}

#### Ajay ####
if [ $USER == 'agautam' -o $USER == 'montu' ]
then
	if [[ -d ~/work/git ]]; then
	  alias g="cd ~/work/git"
	fi
	if [[ -d ~/git ]]; then
	  alias g="cd ~/git"
	fi
	source ~agautam/.ajay/git-prompt.sh
	export PS1='\[\e]0;\w\a\]\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]$(__git_ps1 " (%s)") \$ '
else
	export PS1='\[\e]0;\w\a\]\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\] \$ '
fi

function add_to_path() { # Only if it exists
	folder=$1
	if [ "$folder" == "" ] || [[ ":$PATH:" == *":$folder:"* ]]
	then
		return
	fi
	if [[ ! -d $folder ]]
	then
		return
	fi
		
	export PATH=$folder:$PATH
}

#add_to_path /Library/Frameworks/Python.framework/Versions/3.5/bin
add_to_path $HOME/bin
add_to_path /usr/local/bin
add_to_path $HOME/tools/flutter/bin
export ANDROID_HOME="$HOME/Library/Android/sdk"
add_to_path $ANDROID_HOME/platform-tools
