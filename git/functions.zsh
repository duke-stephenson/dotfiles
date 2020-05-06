
fsw () {
 (while read; do $@; done)
}

wip () {
 git add .
 git commit -a -m "wip($1): $2"
}

ff () {
 git add .
 git commit -a -m "feat($1): $2"
}

fix () {
 git add .
 git commit -a -m "fix($1): $2"
}

perf () {
 git add .
 git commit -a -m "perf($1): $2"
}

chore () {
 git add .
 git commit -a -m "chore($1): $2"
}

refa () {
 git add .
 git commit -a -m "refactor($1): $2"
}


h_reset () {
  git checkout master
  git delete-tag $1
  git reset --hard $2
  git push --force
  git checkout develop
  git reset --hard $2
  git push --force
}

quick () {
  local message=${1:-quick}
  git commit -a -m "chore(app): $message"
  git push --no-verify
}

quik () {
  git add .
  git commit -a -m "chore($1): $2"
  git push --no-verify
}

qup () {
 local message=${1:-quick}
 git commit -a -m "chore(app): $message"
 git push --no-verify j-walker23

}

gq () {
  local message=${1:-quick}
  git commit -a -m "chore(rel): $message" -q
  git push --no-verify
}

pull_all () {
  for i in $(git branch -a |grep 'remotes' | awk -F origin/ '{print $2}' | grep -v 'HEAD ->');
    do git checkout -b $i --track origin/$i;
  done
}
