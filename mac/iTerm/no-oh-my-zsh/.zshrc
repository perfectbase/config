# Enable colors and change prompt:
autoload -U colors && colors
# PS1="%B%{$fg[red]%}[%{$fg[blue]%}%n%{$fg[white]%}@%{$fg[green]%}%m %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}>%b "
PS1="%B%{$fg[red]%}[%{$fg[cyan]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) # Include hidden files.


# Use lf to switch directories and bind it to ctrl-o
lfcd () {
  tmp="$(mktemp)"
  lf -last-dir-path="$tmp" "$@"
  if [ -f "$tmp" ]; then
    dir="$(cat "$tmp")"
    rm -f "$tmp"
    [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
  fi
}
bindkey -s '^o' 'lfcd\n'

# Others
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
eval "$(rbenv init -)"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export GOPATH=$HOME/Projects/go-workspace
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
fixmouse () {
  options_pid=$(ps aux | grep LogiMgrDaemon.app | awk 'FNR == 1 {print $2}')
  kill $options_pid
}

# Load zsh-syntax-highlighting; should be last.
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh