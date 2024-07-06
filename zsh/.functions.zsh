md() {
    if [[ "$1" ]]
    then
        mkdir "$1"
        cd "$1"
    else 
        echo "Error: no folder name provided"
    fi
}

hicons() {
	defaults write com.apple.finder CreateDesktop -bool false
	killall Finder
	echo "😴 Icons removed"
}

sicons() {
	defaults write com.apple.finder CreateDesktop -bool true
	killall Finder
	echo "🤩 Icons returned"
}
