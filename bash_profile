export EDITOR=vim

# GNU coreutils for Mac
GNU_DIR='/usr/local/opt/coreutils/libexec/gnubin'
if [[ -d "$GNU_DIR" ]] ; then
  export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
  export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
fi

if [ -d "$HOME/.linuxbrew" ]; then
  export PATH="$HOME/.linuxbrew/bin:$PATH"
  export LD_LIBRARY_PATH="$HOME/.linuxbrew/lib:$LD_LIBRARY_PATH"
fi

if [ -d "$HOME/.go" ]; then
  export GOPATH=~/.go
  export PATH=$PATH:$GOPATH/bin
fi

for f in ~/.profile.d/*; do source $f; done

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
