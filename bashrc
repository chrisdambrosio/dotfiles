source ~/.bash_aliases

if ls --color -d . >/dev/null 2>&1; then # GNU ls
  alias ls="ls --color=auto"
  eval `dircolors ~/.dircolors.ansi-dark`
elif ls -G -d . >/dev/null 2>&1; then # BSD ls
  alias ls="ls -G"
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*