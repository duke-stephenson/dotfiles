
#!/bin/bash
alias ni='npm install'
alias ns='npm install --save'
alias uns='npm uninstall --save'
alias nd='npm install --save-dev'
alias und='npm uninstall --save-dev'
alias nig='npm install -g'
alias ung='npm uninstall -g'
alias nlg='npm list -g --depth=0'
alias nls='npm list --depth=0'
alias ngr='PATH=$(npm bin):$PATH'
alias nr='npm run -s'

alias ya="yarn add"
alias yad="yarn add -D"
alias yag="yarn global add"
alias yu="yarn upgrade"
alias yr="yarn remove"
alias ylg="yarn global list --depth=0"


yat () {

 cmd=""
 for name in $@; do
  cmd+="@types/$name "
 done
 eval yarn add -D $cmd
}
