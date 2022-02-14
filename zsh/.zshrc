DOT_HOME=`~/.dotfiles`
BREW_HOME=`/opt/homebrew/bin`

export PATH=$PATH:$BREW_HOME

source `$DOT_HOME/zsh/.aliases.zsh`
source `$DOT_HOME/zsh/.functions.zsh`
source `$DOT_HOME/dependencies/zsh-autosuggestions/zsh-autosuggestions.zsh`
source `$DOT_HOME/dependencies/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh`

eval "$(/opt/homebrew/bin/brew shellenv)"