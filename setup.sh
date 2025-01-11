function setup_brew() {
    which brew > /dev/null
    if ! [[ $? ]] then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi

	brew install --cask raycast
	brew install --cask warp
    brew install --cask arc
    brew install --cask visual-studio-code
    brew install --cask fork
    brew install --cask discord
    brew install --cask telegram
    brew install --cask proxyman
    brew install --cask postman
    brew install --cask obsidian
    brew install --cask figma
    brew install --cask notion

    brew install micro
    brew install gh
    brew install cocoapods
    brew install swiftlint
    brew install bat
    brew install tldr	
}

function setup_xcode() {
    local THEME_DIR=~/Library/Developer/Xcode/UserData/FontAndColorThemes
    mkdir -p "$THEME_DIR"
    for FILE in xcode/theme/*; do
        cp "$FILE" "$THEME_DIR"
    done
}

function setup_general() {
    ln -s $DOT_HOME/git/.gitignore ~/.gitignore
    ln -s $DOT_HOME/git/.gitconfig ~/.gitconfig
}

curl https://mise.run | sh

source ./zsh/.zshrc

setup_brew
setup_xcode
setup_general
