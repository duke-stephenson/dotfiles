
nis () {
  cmd="node --inspect-brk ./node_modules/.bin/$@"
  eval $cmd
}

unit() {
  cmd="pytest $@"
  echo $cmd
  eval $cmd
  cmd="fswatch -r -o -e 'pyc' sc tests | fswa pytest -p no:logging $@"
  eval $cmd
}


jbu () {
 eval "jspm bundle $@ -i --skip-source-maps static/dist/jbu.js"
}

sjbu () {
 eval "jspm bundle support - support/vendors - support/views/$@ -i --skip-source-maps static/dist/sjbu.js"
}

wjbu () {
 eval "jspm bundle web - web/vendors - web/views/$@ -i --skip-source-maps static/dist/wjbu.js"
}

ji () {
  cmd="jspm install $@ --lock --exact"
  echo $cmd
  eval $cmd
}

jie () {
  cmd="jspm install $@ --exact"
  echo $cmd
  eval $cmd
}

jpp () {
  jspm inspect $@
}

jin () {
 cmd=""
 for name in $@; do
  cmd+="npm:$name "
 done
 echo "cmd $cmd"
 ji="jspm install"
 eval $ji $cmd --lock --exact
}

jidn () {
 cmd=""
 for name in $@; do
  cmd+="npm:$name "
 done
 echo "cmd $cmd"
 ji="jspm install"
 eval $ji $cmd --dev --lock --exact
}

jig () {
	package=$1
	jspm install github:$package --lock --exact
}


jid () {
  jspm install $@ --dev --lock --exact
}

unj () {
  cmd=""
  for name in $@; do
   cmd+="$name "
  done
  echo "cmd $cmd"
  ji="jspm uninstall"
  eval $ji $cmd
}

ty () {
 libs=()
 for var in "$@"; do
  libs+="@types/${var}"
 done
 cm="npm install --save ${libs}"
 # echo ${cm}
 npm install --save ${libs}
}

uty () {
 libs=()
 for var in "$@"; do
  libs+="@types/${var}"
 done
 npm uninstall --save ${libs}
}
