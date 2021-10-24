export ZSH='/home/akinozgen/.oh-my-zsh'
ZSH_THEME='edvardm'
plugins=(git fzf)
source $ZSH/oh-my-zsh.sh

# eval "$(oh-my-posh --init --shell zsh --config ~/.poshthemes/half-life.omp.json)"

source $HOME/.bashrc
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word
