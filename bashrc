source ~/.bash_aliases

if ls --color -d . >/dev/null 2>&1; then # GNU ls
  alias ls="ls --color=auto"
  eval `dircolors ~/.dircolors.ansi-dark`
elif ls -G -d . >/dev/null 2>&1; then # BSD ls
  alias ls="ls -G"
fi

if [ -d "$HOME/.linuxbrew" ]; then
  export PATH="$HOME/.linuxbrew/bin:$PATH"
  export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
  export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
fi

if [ -d "$HOME/.go" ]; then
  export GOPATH="$HOME/.go"
  export PATH="$PATH:$HOME/.go/bin"
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
