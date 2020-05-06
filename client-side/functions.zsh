
nis () {
  cmd="node --inspect-brk ./node_modules/.bin/$@"
  eval $cmd
}

unit() {
  cmd="pytest $@"
  echo $cmd
  eval $cmd
  cmd='watchmedo auto-restart -d sc -d tests -p "*.py" -R -- pytest -p no:logging $@'
  eval $cmd
}

uni() {
  cmd="pytest $@"
  echo $cmd
  eval $cmd
  cmd='watchmedo auto-restart -d sc -d tests -p "*.py" -R -- pytest $@'
  eval $cmd
}

wp-email() {
  cmd='npx wp --config.$@ webpacks/emails.ts'
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
