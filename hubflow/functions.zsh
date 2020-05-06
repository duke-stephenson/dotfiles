
hco () {
  local inp=$1
  local branch=""

  for i in $(git branch -a |grep 'remotes' | awk -F origin/ '{print $2}' | grep -v 'HEAD ->');
    do if [[ "$i" =~ $inp ]]; then branch=$i; fi
  done

  local split=("${(@s|/|)branch}")
  local base=${split[1]}
  local name=${split[2]}
  command git hf $base checkout $name
}



