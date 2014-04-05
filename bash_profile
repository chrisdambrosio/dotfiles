export EDITOR=vim

# GNU coreutils for Mac
GNU_DIR='/usr/local/opt/coreutils/libexec/gnubin'
if [[ -d "$GNU_DIR" ]] ; then
  export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
  export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
fi

#for f in ~/.profile.d; do source $f; done

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
