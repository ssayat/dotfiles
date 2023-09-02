if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export EDITOR="/usr/bin/nvim"

# ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="robbyrussell"
ZSH_THEME="bira"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# alias 
alias grep="grep --color=auto"
alias v="nvim"
alias open="xdg-open"
alias df="df -h"
alias c="xclip"
alias p="xclip -o"
alias py="python"
alias P="xclip -selection clipboard"
alias h="history | tail -30"

# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /home/akira/build/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
