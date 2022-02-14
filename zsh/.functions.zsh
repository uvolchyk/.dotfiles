md() {
    if [[ "$1" ]]
    then
        mkdir "$1"
        cd "$1"
    else 
        echo "Error: no folder name provided"
    fi
}

gi() {
    if [[ "$1" ]]
    then
        md "$1"
        git init 
        touch README.md
        echo "# $1" > README.md
        touch .gitignore
        echo ".DS_Store" > .gitignore
    else 
        echo "Error: No repository name provided"
    fi
}

rgi() {
    if [[ -d ".git" ]] 
    then
        hub create
        git push -u origin HEAD
    else
        echo "Error: .git not found"
    fi
}

pgi() {
    if [[ "$1" ]]
    then
        gi "$1"
        git add .
        git commit -m "init: 🥳"
        rgi
    else 
        echo "Error: No repository name provided"
    fi
}

crun() {
	cmake --build . && ./$1
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
