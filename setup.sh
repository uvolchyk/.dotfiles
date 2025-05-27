#!/bin/zsh

function setup_brew() {
  which brew > /dev/null
  if ! [[ $? ]] then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi

	brew install --cask raycast # spotlight
	brew install --cask ghostty # terminal
  brew install --cask dash # documentation
  brew install --cask deepl
  brew install --cask visual-studio-code # code editor
  brew install --cask discord # ...
  brew install --cask telegram # ...
  brew install --cask proxyman # proxy
  brew install --cask postman # api
  brew install --cask figma # design
  brew install --cask obsidian # notes

  brew install gh
  brew install lazygit
  brew install bat
  brew install mise
  brew install micro
  brew install cmake
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
  ln -s $DOT_HOME/git/.github_token ~/.github_token
  ln -s $DOT_HOME/git/.gitconfig ~/.gitconfig
}

source ./zsh/.zshrc

setup_brew
setup_xcode
setup_general
