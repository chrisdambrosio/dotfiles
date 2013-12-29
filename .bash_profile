source ~/.bash_aliases
export EDITOR=vim

# GNU coreutils for Mac
GNU_DIR='/usr/local/opt/coreutils/libexec/gnubin'
if [[ -d "$GNU_DIR" ]] ; then
  export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
  export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
fi

for dotfolder in $(find ~/.dotfiles_* -maxdepth 0 -type d 2> /dev/null); do
  if [ -f "$dotfolder/.bash_profile" ]
  then
    source "$dotfolder/.bash_profile"
  fi
done

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
