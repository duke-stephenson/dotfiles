alias v='workon'
alias v.deactivate='deactivate'
alias v.mk='mkvirtualenv'
alias v.rm='rmvirtualenv'
alias v.switch='workon'
alias v.add2virtualenv='add2virtualenv'
alias v.cdsitepackages='cdsitepackages'
alias v.cd='cdvirtualenv'
alias v.lssitepackages='lssitepackages'
alias v.tmp='mktmpenv'

alias devel='python setup.py develop'
alias unpe="pip uninstall $(basename $(find . -name '*.egg-info') .egg-info)"
