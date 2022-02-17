function setup_brew() {
    which brew > /dev/null
    if ! [[ $? ]] then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi

	brew install --cask iterm2
    brew install --cask visual-studio-code
    brew install --cask discord
    brew install --cask telegram
    brew install --cask proxyman
    brew install --cask postman
    brew install --cask obsidian

    brew install micro
    brew install gh
    brew install cocoapods
    brew install swiftlint
    brew install bat
    brew install tldr	
}

function setup_xcode() {
    for FILE in xcode/theme/*; 
    do cp $FILE ~/Library/Developer/Xcode/UserData/FontAndColorThemes; 
    done
}

function setup_general() {
    ln -s $DOT_HOME/git/.gitignore ~/.gitignore
    ln -s $DOT_HOME/git/.gitconfig ~/.gitconfig
}

source ./zsh/.zshrc

setup_brew
setup_xcode
setup_general
