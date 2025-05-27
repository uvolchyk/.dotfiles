md() {
  if [[ "$1" ]]
  then
    mkdir "$1"
    cd "$1"
  else 
    echo "🤔 - Please provide a directory name"
  fi
}