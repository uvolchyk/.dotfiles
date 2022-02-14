function setup_brew() {
    which brew > /dev/null
    if ! [[ $? ]] then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi

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
}

function setup_xcode() {
    for FILE in xcode/theme/*; 
    do cp $FILE ~/Library/Developer/Xcode/UserData/FontAndColorThemes; 
    done
}

source ~/.zshrc

setup_brew
setup_xcode