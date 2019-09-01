# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

eval $(thefuck --alias)

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="spaceship"
SPACESHIP_VENV_COLOR=green

# Plugins
plugins=(git)
plugins=(kubectl)
plugins=(zsh-autosuggestions)

# User configuration

export PATH="/Users/alexander/dev/upwork/mobile_dev/flutter/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:."
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export PATH="/usr/local/opt/openssl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# misc aliases
alias ph="cd /Users/alexander/dev/elixr_labs/philter"
alias upwork="cd /Users/alexander/dev/upwork/"
alias em="cd /Users/alexander/dev/ExactMotion/"
source ~/.virtualenvs/py2default/bin/activate
alias py2="deactivate && source ~/.virtualenvs/py2default/bin/activate"
alias py3="deactivate && source ~/.virtualenvs/py3default/bin/activate"
alias ipython="ipython --profile=admix" # config -> vim /Users/alexander/.ipython/profile_admix/ipython_config.py

# Git aliases
alias gst="git status"
alias gl="git lg"
alias gco="git checkout"
alias gp="git pull"
alias gaa="git add --all"
alias gm="git merge"

# docker-compose aliases
alias dc="docker-compose"
alias dcb="docker-compose build"
alias dcu="docker-compose up"
alias dcud="docker-compose up -d"
alias dcdw="docker-compose down"
alias dcps="docker-compose ps"
alias dcl="docker-compose logs"
alias dcrm-all="docker-compose rm"

#docker misc
alias dprune="docker volume prune"
alias dprune-all="docker image prune -a"


# ExactMotion misc
export PYTHONPATH=$PYTHONPATH:/Users/alexander/dev/ExactMotion/egbgrr/api:/Users/alexander/dev/ExactMotion/egbgrr/database:/Users/alexander/dev/ExactMotion/egbgrr/tools:/Users/alexander/dev/ExactMotion/egbgrr/utils:/Users/alexander/dev/ExactMotion/egbgrr/processors
export CONFIG_PATH=/Users/alexander/dev/ExactMotion/egbgrr/.config.local.yaml
export BASEDIR=/Users/alexander/dev/ExactMotion/egbgrr/
export CODEDIR=api
alias kh="cd /Users/alexander/dev/ExactMotion/ETL_projects"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

  # Set Spaceship ZSH as a prompt
  autoload -U promptinit; promptinit
  prompt spaceship
