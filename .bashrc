 export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
 export CLICOLOR=1
 export LSCOLORS=ExFxBxDxCxegedabagacad
 alias ls='ls -GFh'

 alias g="git"
 alias gb="g branch"
 alias gba="gb -a"
 alias gbd="gb -D"
 alias gl="g log"
 alias gs="g status"
 alias ga="g add -A"
 alias gchb="g checkout -b"
 alias gch="g checkout"
 alias gchm="gch master"
 alias gsh="g stash"
 alias gshl="gsh list"
 alias gshp="gsh pop"
 alias gpo="g pull origin"
 alias gpom="g pull origin master"
 alias gpusho="g push origin"
 alias gpushom="gpusho master"
 alias gr="g reset"
 alias grh="gr --hard"
 alias gf="g fetch"
 alias gm="g merge"
 alias gmm="gm master"
 alias glac="g rev-parse HEAD"
 alias gchp="g cherry-pick"
 alias gd="g diff"

 alias ebash="vim ~/.bashrc"
 alias sbash="source ~/.bashrc"

 function gpushall() {
   ga
   git commit -m "$1"
   gpusho
 }

 alias dc="docker-compose"

 if [ -f ~/.git-completion.bash ]; then
   . ~/.git-completion.bash

   # Add git completion to aliases
   __git_complete gch _git_checkout
   __git_complete gb _git_branch
   __git_complete gm _git_merge
   __git_complete gbd _git_branch
 fi
