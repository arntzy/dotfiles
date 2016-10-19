echo "Have a fuckin' bash..."
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

MYNAME='Aaron Arntz'
export MYNAME

if [ -f ~/.git-completion.bash ]; then
	source ~/.git-completion.bash
fi

if [ -f ~/.git-prompt.sh ]; then
	  source ~/.git-prompt.sh
	        fi

#Environment exports
export EDITOR=vim
export HISTSIZE=10000
export HISTCONTROL=ignoreboth
export HISTIGNORE="history:h:pwd:exit:df:ls:ls -la:ls -lah:ll"
export PS1='\W$(__git_ps1 "(%s)")=> '
export GREP_OPTIONS="--color=auto"

#Aliases
alias speedtest='curl -o /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'
alias serv='python -m SimpleHTTPServer'
alias ll='ls -lahG'
alias h='history'
alias hugs='/opt/local/bin/hugs'

#override UNIX commands
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias mkdir='mkdir -p'
alias grep='grep -E'
alias qwd='printf "%q\n" "$(pwd)"'
alias echostring='echo $1'

#git aliases 
alias gs='git status' 
alias gc='git commit -m' 
alias ga='git add .'
alias gpom='git push origin master'
alias gb='git branch'
alias gca='git commit -am'

#Typos
