source ~/.bash_aliases
export EDITOR=vim

for dotfolder in $(find ~/.dotfiles_* -maxdepth 0 -type d 2> /dev/null); do
  if [ -f "$dotfolder/.bash_profile" ]
  then
    source "$dotfolder/.bash_profile"
  fi
done

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
