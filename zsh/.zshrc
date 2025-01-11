DOT_HOME=~/.dotfiles
BREW_HOME=/opt/homebrew/bin
BUN_HOME=~/.bun/bin

export PATH=$PATH:$BREW_HOME:$DOT_HOME:$BUN_HOME

source $DOT_HOME/.dot_env
source $DOT_HOME/zsh/.aliases.zsh
source $DOT_HOME/zsh/.functions.zsh
source $DOT_HOME/zsh/.git.zsh
source $DOT_HOME/dependencies/zsh-autosuggestions/zsh-autosuggestions.zsh
source $DOT_HOME/dependencies/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#24A99B,bold"

export BUN_INSTALL="~/.bun"
[ -s "~/.bun/_bun" ] && source "~/.bun/_bun"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/zsh_completion" ] && \. "$NVM_DIR/zsh_completion" 