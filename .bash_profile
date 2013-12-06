set -o vi
source ~/.bash_aliases
export EDITOR=vim

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

for dotfolder in $(find ~/.dotfiles_* -maxdepth 0 -type d); do
  if [ -f "$dotfolder/.bash_profile" ]
  then
    source "$dotfolder/.bash_profile"
  fi
done
