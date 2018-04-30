
alias ujb='jspm unbundle'
alias jd='jspm depcache'
alias comp='gulp comp -p'
alias ogc='open -a Google\ Chrome --args --disable-web-security --allow-file-access-from-files'
alias alog='tail -f /usr/local/var/log/nginx/access.log'
alias elog='tail -f /usr/local/var/log/nginx/error.log'

alias sc.sup="webstarts -c gunicorn.conf.py --graceful-timeout 0 -b localhost:8001 main_support:app"
alias sc.inv="webstarts -c gunicorn.conf.py --graceful-timeout 0 -b localhost:8002 main_invite:app"
alias sc.api="webstarts -c gunicorn.conf.py --graceful-timeout 0 -b localhost:8003 main_api:app"
alias sc.cel="celery worker -A main_celery:app"
alias sc.cron="celery beat -A main_cron:app --schedule instance/local/beat.db --loglevel=debug"
alias sc.web="webstarts -c gunicorn.conf.py --graceful-timeout 0 main_web:app"
alias sc.flower="flower -A main_celery:app --port=5555"
alias sc.ac="watchmedo auto-restart -d socialclime -d instance/local -R -- celery worker -A main_celery:app"
alias ra.ac="watchmedo auto-restart -d medrank -d instance/local -R -- celery worker -A main_celery:app"
