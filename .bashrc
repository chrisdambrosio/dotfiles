PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# GNU coreutils for Mac
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

if ls --color -d . >/dev/null 2>&1; then # GNU ls
  alias ls="ls --color=auto"
  eval `dircolors ~/.dotfiles/dircolors.ansi-dark`
elif ls -G -d . >/dev/null 2>&1; then # BSD ls
  alias ls="ls -G"
fi

alias ll="ls -alF"

