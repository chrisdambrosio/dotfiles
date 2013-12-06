alias ll="ls -laF"
alias ssh="TERM=xterm ssh"
alias vim="TERM=screen-256color vim"
alias tmux="TERM=screen-256color tmux"
alias tmate="TERM=screen-256color tmate"
alias v=vagrant

for dotfolder in $(find ~/.dotfiles_* -maxdepth 0 -type d); do
  if [ -f "$dotfolder/.bash_aliases" ]
  then
    source "$dotfolder/.bash_aliases"
  fi
done
