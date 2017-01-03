_pubs () {
 gcloud alpha pubsub topics create prod-cron prod-med-imports prod-score-events prod-sync-google
 gcloud alpha pubsub subscriptions create prod-cron --topic prod-cron --ack-deadline 600 --push-endpoint https://app.socialclime.com/pubsub/v1/cron
 gcloud alpha pubsub subscriptions create prod-med-imports --topic prod-med-imports --ack-deadline 600 --push-endpoint https://app.socialclime.com/pubsub/v1/med-imports
 gcloud alpha pubsub subscriptions create prod-score-events --topic prod-score-events --ack-deadline 600 --push-endpoint https://app.socialclime.com/pubsub/v1/score-events
 gcloud alpha pubsub subscriptions create prod-sync-google --topic prod-sync-google --ack-deadline 600 --push-endpoint https://app.socialclime.com/pubsub/v1/sync-google
}

cunt () {

watchman -j <<-EOT
["trigger", "src/tests/unit", {
            "name": "glyngo unit tests",
            "chdir": "../../..",
            "append_files": false,
            "command": [
                "pyone"
            ],
            "stdin": [
                "name",
                "exists",
                "new",
                "size",
                "mode"
            ],
            "expression": [
                "anyof",
                [
                    "match",
                    "*.py",
                    "wholename"
                ]
            ]
        }]
EOT
}

_warn() { echo "$@" >&2; }
_die() { _warn "Error: $@"; kill -INT $$; }


d_main () {
  if [ $# -eq 0 ]; then
    _die 'Path argument missing'
  fi

  module=${2:-"web"}
  gulp dialog -m ${module} -p "views/main/${1}"
}

d_app () {
  if [ $# -eq 0 ]; then
    _die 'Path argument missing'
  fi

  module=${2:-"app"}
  gulp dialog -m ${module} -p "views/app/${1}"
}

d_pub () {
  if [ $# -eq 0 ]; then
    _die 'Path argument missing'
  fi

  module=${2:-"web"}
  gulp dialog -m ${module} -p "views/public/${1}"
}

c_main () {
  if [ $# -eq 0 ]; then
    _die 'Path argument missing'
  fi

  module=${2:-"web"}
  gulp comp -m ${module} -p "views/main/${1}"
}

c_pub () {
  if [ $# -eq 0 ]; then
    _die 'Path argument missing'
  fi

  module=${2:-"web"}
  gulp comp -m ${module} -p "views/public/${1}"
}

c_app () {
 if [ $# -eq 0 ]; then
   _die 'Path argument missing'
 fi

 module=${2:-"app"}
 gulp comp -m ${module} -p "views/app/${1}"
}

deb () {
    DEBUG=${1:-"*"} npm run ${2}
}

jin () {
 cmd=""
 for name in $@; do
  cmd+="npm:$name "
 done
 echo "cmd $cmd"
 ji="jspm install"
 eval $ji $cmd
}

jig () {
	package=$1
	jspm install github:$package
}

jib () {
	package=$1
	jspm install bower:$package
}

ti () {
	package=$1
	typings i dt~$package -GS
}

unj () {
  jspm uninstall $1
}

jid () {
 jspm install $@ --dev
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
 # cm="npm install --save ${libs}"
 # echo ${cm}
 npm uninstall --save ${libs}
}

ji () {
 jspm install $@
}

b_main () {
 if [ $# -eq 0 ]; then
   _die 'Path argument missing'
 fi
 module=${1}
 jspm bundle web - web/components/views/main/${module} -i --skip-source-maps src/static/dist/temp/bundle.js
}


reset_web () {
	rm -rf ~/Library/Application\ Support/WebStorm*
	rm -rf ~/Library/Logs/WebStorm*
	rm -rf ~/Library/Caches/WebStorm*
	rm -rf ~/Library/Preferences/WebStorm*
}

to_stylus () {
	for file in "$@" ; do
		echo $file
		sass2stylus $file .
	done
}

do_it () {
	for file in "$@" ; do
		{
			sass2stylus $file "$2" 2>/dev/null
			echo $file
		} always {
			echo "FAILED: $file"
		}

	done
}
