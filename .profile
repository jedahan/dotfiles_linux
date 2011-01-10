# Common environment
export PATH=/usr/local/bin:/usr/bin:/bin:/opt/bin:/usr/lib64/jdk/bin:/usr/lib64/jre/bin
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

alias hack="cat /dev/urandom | tr -dc '[a-z][A-Z][0-9]-_!@#$%^&*()_+{}|:?=' | fold -w 100"

function patcherbo() {
  echo -n '!pq ' | xsel --input
  git commit -a -m $1
  git format-patch HEAD~1 --stdout | ix | tr -d '\n' | xsel --append --input
  echo -n " ::$2" | xsel --append --input
}

# Nice highlighting in less
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;38;5;74m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[38;5;246m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[04;38;5;146m'
