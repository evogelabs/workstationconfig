# Node
export PATH="/usr/local/opt/node@16/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/node@16/lib"
export CPPFLAGS="-I/usr/local/opt/node@16/include"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Meus scripts
MEUS_SCRIPTS=("$HOME/workstationconfig/scripts/connections:"
              "$HOME/workstationconfig/scripts/database:"
              "$HOME/workstationconfig/scripts/dev:"
              "$HOME/workstationconfig/scripts/docker:"
              "$HOME/workstationconfig/scripts/gcp:")

export PATH="$PATH:${MEUS_SCRIPTS[*]}"

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi
