# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Prompt definition; default is stored in $DEFAULT. To restore: issue PS1=$DEFAULT in Terminal
PS1="\[\033[1;31m\]\w$ \[\033[0m\]"

# Aliases & Functions

alias aliases='vim ~/.bashrc && source ~/.bashrc' # edit & source .bashrc
alias vimrc='vim ~/.vimrc && source ~/vimrc' # edit & source .vimrc

alias c='clear' && alias clr='clear && echo "Use c"'
alias e='exit'
alias v='vim'

g() 	{ # Go to folder
	cd "$1" 
	} 

alias gh='cd ~'
alias gu='cd ..'
alias gd='cd ~/Documents'
alias gl='cd ~/Downloads'
alias gr='cd ~/repos'
alias gw='cd ~/websites'

alias music='cmus' 
alias ra='ranger' # File Manager
alias rss='open /Applications/Vienna.app' # RSS reader
alias calc='dc' # RPN calculator 
# alias clock='clockywock' # full-screen ASCII analog clock
alias clock='tty-clock' # digital terminal clock

rd() 	{ # Remove i.e. delete Directory
	rm -R "$1" 
	} 
md() 	{ # Make Directory
	mkdir "$1" 
	} 

play()	{ # Play file, first giving duration in hh:mm:ss and surpressing output
	clear
	bash s2hms.bash $1
	afplay $1 &> /dev/null
	}

export CLICOLOR=1 && export LSCOLORS=FxFxCxDxBxegedabagaced # Colorize folders in ls output https://www.cyberciti.biz/faq/apple-mac-osx-terminal-color-ls-output-option/
