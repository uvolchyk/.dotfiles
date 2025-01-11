md() {
  if [[ "$1" ]]
  then
    mkdir "$1"
    cd "$1"
  else 
    echo "🤔 - Please provide a directory name"
  fi
}

toggleIcons() {
  defaults write com.apple.finder CreateDesktop -bool "$1"
  killall Finder
  echo "$2"
}

sicons() {
  toggleIcons true "✅ - Done"
}

hicons() {
  toggleIcons false "✅ - Done"
}