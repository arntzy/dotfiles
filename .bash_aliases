alias speedtest='curl -o /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'
alias serv='python -m SimpleHTTPServer'
alias ll='ls -lahG'
alias h='history'
alias hugs='/opt/local/bin/hugs'
alias stu='~/Documents/android-studio/bin/studio.sh'
alias emulator="~/Android/Sdk/emulator/emulator -use-system-libs -avd Nexus_5X_API_25_x86"
alias generate_env_sample="sed 's/=.*/=/' .env > .env.sample"
alias xclip='xclip -selection c'
alias xo='xdg-open'
alias rndebug='/home/arntzy/Applications/React\ Native\ Debugger/React\ Native\ Debugger'

#override UNIX commands
alias mv='mv -i'
alias cp='cp -i'
# alias rm='rm -i'
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
alias subupdate="git submodule foreach 'git pull'"
alias gruv='git remote -v update'
