
nis () {
  cmd="node --inspect-brk ./node_modules/.bin/$@"
  eval $cmd
}

unit() {
  cmd="pytest $@"
  echo $cmd
  eval $cmd
  cmd="watchmedo auto-restart -d sc -d tests -R -- pytest -p no:logging $@"
  eval $cmd
}

ty () {
 libs=()
 for var in "$@"; do
  libs+="@types/${var}"
 done
 yarn add ${libs}
}

uty () {
 libs=()
 for var in "$@"; do
  libs+="@types/${var}"
 done
 yarn remove ${libs}
}
