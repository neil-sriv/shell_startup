export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT ]] && export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
