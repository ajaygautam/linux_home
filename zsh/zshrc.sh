alias df='df -h'
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour

export EXINIT="set number tabstop=4 autoindent ignorecase hlsearch | syntax on"

export FLUTTER_HOME="$HOME/tools/flutter"
export PATH=$PATH:$FLUTTER_HOME/bin:$HOME/bin
export PUB_CACHE="$FLUTTER_HOME/.pub-cache"
