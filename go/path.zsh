export GOPATH="$PROJECTS/Go"
export PATH="$GOPATH/bin:$PATH"

[ ! -d "$GOPATH" ] &&  mkdir -p "$GOPATH"
export PATH=$PATH:/usr/local/opt/go/libexec/bin
