export EDITOR=vim

# GNU coreutils for Mac
GNU_DIR='/usr/local/opt/coreutils/libexec/gnubin'
if [[ -d "$GNU_DIR" ]] ; then
  export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
  export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
fi

if [ -d "$HOME/.linuxbrew" ]; then
  # Until LinuxBrew is fixed, the following is required.
  # See: https://github.com/Homebrew/linuxbrew/issues/47
  export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/usr/local/lib64/pkgconfig:/usr/lib64/pkgconfig:/usr/lib/pkgconfig:/usr/lib/x86_64-linux-gnu/pkgconfig:/usr/lib64/pkgconfig:/usr/share/pkgconfig:$PKG_CONFIG_PATH
  ## Setup linux brew
  export LINUXBREWHOME=$HOME/.linuxbrew
  export PATH=$LINUXBREWHOME/bin:$PATH
  export MANPATH=$LINUXBREWHOME/man:$MANPATH
  export PKG_CONFIG_PATH=$LINUXBREWHOME/lib64/pkgconfig:$LINUXBREWHOME/lib/pkgconfig:$PKG_CONFIG_PATH
  export LD_LIBRARY_PATH=$LINUXBREWHOME/lib64:$LINUXBREWHOME/lib:$LD_LIBRARY_PATH
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
