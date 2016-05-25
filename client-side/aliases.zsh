
alias ai='apm install'
alias fast="grunt watch --fast"
alias admin.fast='grunt watch --module=admin --fast'
alias followme.fast='grunt watch --module=followme --fast'

alias bin='bower info'
alias ji='jspm install'
alias ujb='jspm unbundle'
alias jd='jspm depcache'

alias comp='gulp comp -p'
alias c.main='gulp comp -p views/main/'
alias d.main='gulp dialog -p views/main/'

alias m.vendor='jspm bundle app/vendors src/main/webapp/app/cached/vendor-build.js'
alias m.coffee='jspm bundle cached/all.js src/main/webapp/app/bundles/co-build.js'
alias m.depcache='jspm depcache app/main.ts - app/vendor.ts - cached/all.js'
alias m.deps='jspm depcache app/vendors'


alias cc='coffee-to-typescript -c'
alias wa='grunt watch'
alias ma='python manage.py'

alias ogc='open -a Google\ Chrome --args --disable-web-security --allow-file-access-from-files'
