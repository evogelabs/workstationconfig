
# export NPMRCFILE="$HOME/.npmrc"

eval "$(mcfly init zsh)"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
test -e "$HOME/.github.zsh" && source "$HOME/.github.zsh"

# Meus scripts
SCRIPTS_DIR="$HOME/workstationconfig/scripts"
export PATH="$SCRIPTS_DIR/connections:$SCRIPTS_DIR/database:$SCRIPTS_DIR/dev:$SCRIPTS_DIR/docker:$SCRIPTS_DIR/gcp:$PATH"

case "$(uname -s)" in
  Darwin)
    export PATH="$PATH:/usr/local/opt/postgresql@15/bin"

    source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    source /usr/local/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
    # if type brew &>/dev/null; then
    #   FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    #   autoload -Uz compinit
    #   compinit
    # fi
    # Node
    # export PATH="/usr/local/opt/node@18/bin:$PATH"
    # export LDFLAGS="-L/usr/local/opt/node@18/lib"
    # export CPPFLAGS="-I/usr/local/opt/node@18/include"
  ;;

  Linux)
    export NODE_OPTIONS="--max_old_space_size=8192"

    # Scripts da Jetbrains
    export JETBRAINS_DIR="$HOME/.local/share/JetBrains/Toolbox/scripts"
    export PATH="$JETBRAINS_DIR:$PATH"

    # Autenticação do Google Cloud
    export GOOGLE_APPLICATION_CREDENTIALS="$HOME/gcpkeys/default.json"
  ;;

  *)
    # Nothing
  ;;
esac
