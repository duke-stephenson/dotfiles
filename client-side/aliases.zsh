
alias ujb='jspm unbundle'
alias jd='jspm depcache'
alias comp='gulp comp -p'
alias ogc='open -a Google\ Chrome --args --disable-web-security --allow-file-access-from-files'
alias alog='tail -f /usr/local/var/log/nginx/access.log'
alias elog='tail -f /usr/local/var/log/nginx/error.log'

alias sc.web="gunicorn -c gunicorn.conf.py --graceful-timeout 0 -b localhost:8000 --reload main_web:app"
alias sc.pweb="gunicorn -c gunicorn.conf.py --graceful-timeout 0 -b localhost:8000 --reload main_prof_web:app"
alias sc.sup="gunicorn -c gunicorn.conf.py --graceful-timeout 0 -b localhost:8001 --reload main_support:app"
alias sc.inv="gunicorn -c gunicorn.conf.py --graceful-timeout 0 -b localhost:8002 --reload main_invite:app"
alias sc.api="gunicorn -c gunicorn.conf.py --graceful-timeout 0 -b localhost:8003 --reload main_api:app"
alias sc.if="gunicorn -c gunicorn.conf.py --graceful-timeout 0 -b localhost:8005 --reload main_iframe:app"

alias sc.cro="celery beat -A main_cron:app --schedule instance/local/beat.db --loglevel=debug"
alias sc.flo="flower -A main_celery:app --port=5555"
alias sc.cel="celery worker -A main_celery:app -Q default,high"
alias sc.cel1="celery worker -A main_celery:app -n w1 -Q default"
alias sc.cel2="celery worker -A main_celery:app -n w2 -Q high"

alias sc.ac="watchmedo auto-restart -d sc -d instance/local -p '*.py' -R -- celery worker -A main_celery:app -Q celery,default,high"
alias ra.ac="watchmedo auto-restart -d rank -d instance/local -p '*.py' -R -- celery worker -A main_celery:app -Q default,high"
