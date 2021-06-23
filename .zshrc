export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias ls='ls -GFh'

alias g="git"
alias gb="g branch"
alias gba="gb -a"
alias gbd="gb -D"
alias gbda="gb | tr -d '*' | grep -v -e master -e main -e dev | xargs git branch -D"
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
alias gpushod="gpusho $(gb --show-current)"
alias gpushom="gpusho master"
alias gr="g reset"
alias grh="gr --hard"
alias gf="g fetch"
alias gm="g merge"
alias gmm="gm master"
alias glac="g rev-parse HEAD"
alias gchp="g cherry-pick"
alias gd="g diff"

function gpushall() {
  ga
  git commit -m "$1"
  gpushod
}

alias ezsh="vim ~/.zshrc"
alias szsh="source ~/.zshrc"

alias uuid="uuidgen | tr -d '\n' | pbcopy"
alias dc="docker-compose"

# Uses zsh's build-in tab-completion library for git
autoload -Uz compinit && compinit

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
