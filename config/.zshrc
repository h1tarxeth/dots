
HISTFILE=~/.histfile
HISTSIZE=500
SAVEHIST=500
bindkey -e

zstyle :compinstall filename '/home/hitarth/.zshrc'
autoload -Uz compinit
compinit

export EDITOR=nvim
export TERMINAL=kitty
export VISUAL=nvim

export PATH="$PATH:/home/hitarth/.cargo/bin"
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
alias cls="clear"
alias sps="sudo pacman -Sy "
alias nv="nvim"
# alias cd="z"
alias ls="eza"
alias f="fd --type f --exclude .git | fzf | xargs nvim"
alias vi="vim"
alias ccp="clipman clear --all"
alias ipm="sudo pacman -S"
alias qp="pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"

export PATH=$PATH:/home/hitarth/.spicetify
