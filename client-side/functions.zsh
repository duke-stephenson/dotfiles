jbu () {
 eval "jspm bundle $@ -i --skip-source-maps static/dist/jbu.js"
}

sjbu () {
 eval "jspm bundle support - support/vendors - support/components/$@ -i --skip-source-maps static/dist/sjbu.js"
}

wjbu () {
 eval "jspm bundle web - web/vendors - web/views/$@ -i --skip-source-maps static/dist/wjbu.js"
}

ji () {
 jspm install $@ --lock
}

jin () {
 cmd=""
 for name in $@; do
  cmd+="npm:$name "
 done
 echo "cmd $cmd"
 ji="jspm install"
 eval $ji $cmd --lock
}

jidn () {
 cmd=""
 for name in $@; do
  cmd+="npm:$name "
 done
 echo "cmd $cmd"
 ji="jspm install"
 eval $ji $cmd --dev --lock
}

jig () {
	package=$1
	jspm install github:$package --lock
}


jid () {
  jspm install $@ --dev --lock
}

jiid () {
 jspm install $@ --dev
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
