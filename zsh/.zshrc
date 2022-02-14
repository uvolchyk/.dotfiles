DOT_HOME=~/.dotfiles
BREW_HOME=/opt/homebrew/bin

export PATH=$PATH:$BREW_HOME:$DOT_HOME

source $DOT_HOME/zsh/.aliases.zsh
source $DOT_HOME/zsh/.functions.zsh
source $DOT_HOME/dependencies/zsh-autosuggestions/zsh-autosuggestions.zsh
source $DOT_HOME/dependencies/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $DOT_HOME/dependencies/pure/pure.zsh

# pure

fpath=("$DOT_HOME/dependencies/pure" $fpath)

autoload -U promptinit; promptinit

zstyle :prompt:pure:git:action show yes 

zstyle :prompt:pure:path color 062

prompt pure
