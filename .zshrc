export ZSH_THEME="philips"
plugins=(git gem ruby zsh-syntax-highlighting)
export ZSH=$HOME/.config/oh-my-zsh
source $ZSH/oh-my-zsh.sh
source $HOME/.profile

# Home End Delete Insert PgUp PgDown
bindkey "^[[7~" beginning-of-line
bindkey "^[[8~" end-of-line
bindkey "^[[3~" delete-char
bindkey "^[[2~" quoted-insert
bindkey "^[[5~" beginning-of-history
bindkey "^[[6~" end-of-history

# Fish style history navigation
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

# Word navigation with ctrl+left/right
bindkey "^[Oc" forward-word
bindkey "^[Od" backward-word

setopt globdots
setopt histignoredups
setopt histignorespace
setopt interactivecomments

unalias sl

