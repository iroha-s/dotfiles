# For zsh-completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

# homebrew update を止める
export HOMEBREW_NO_AUTO_UPDATE=1

# statship
eval "$(starship init zsh)"

# asdf
. /usr/local/opt/asdf/libexec/asdf.sh
