
kgrep () {
  kill $(ps aux | grep 'python' | awk '{print $2}')
}
