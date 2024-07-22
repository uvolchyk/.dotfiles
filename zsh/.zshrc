DOT_HOME=~/.dotfiles
BREW_HOME=/opt/homebrew/bin

export PATH=$PATH:$BREW_HOME:$DOT_HOME

export PATH=$PATH:~/Library/Python/3.8/bin
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
export JAVA_HOME="/opt/homebrew/opt/openjdk/bin/java"

export PATH=/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.0.0/bin:$PATH
export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"

source $DOT_HOME/zsh/.aliases.zsh
source $DOT_HOME/zsh/.functions.zsh
source $DOT_HOME/dependencies/zsh-autosuggestions/zsh-autosuggestions.zsh
source $DOT_HOME/dependencies/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#24A99B,bold"

eval "$(~/.local/bin/mise activate zsh)"