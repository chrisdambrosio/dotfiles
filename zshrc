if [[ "$OSTYPE" == "darwin"* ]]; then
  source $(brew --prefix)/share/antigen/antigen.zsh
else
  source /usr/share/zsh/share/antigen.zsh
fi

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle command-not-found
antigen bundle vi-mode

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Optional: Load asdf as an Antigen bundle (only if needed)
# antigen bundle asdf

# Load the theme.
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply

# Ensure asdf is in PATH
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

# Add asdf completions
fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)
autoload -Uz compinit && compinit

export PATH="$(npm config get prefix)/bin:$PATH"

# Added by Windsurf
export PATH="$HOME/.codeium/windsurf/bin:$PATH"
