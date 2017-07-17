
unp () {
  cmd=""
  for name in $@; do
   cmd+="$name "
  done
  eval "pip uninstall $cmd"
}

pi () {
  pip install $@
}
