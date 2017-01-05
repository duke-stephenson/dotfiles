
mkdir -p mac/themes
wget https://raw.github.com/altercation/solarized/master/osx-terminal.app-colors-solarized/xterm-256color/Solarized%20Dark%20xterm-256color.terminal -O mac/themes/solarized-dark.terminal
open -a Terminal.app mac/themes/solarized-dark.terminal

ln -sfv /usr/local/opt/nginx/*.plist ~/Library/LaunchAgents

# http://burnedpixel.com/blog/setting-up-git-and-github-on-your-mac/#keychainhelper
# http://olivierlacan.com/posts/why-is-git-https-not-working-on-github/

sudo scutil --set ComputerName "john"
sudo scutil --set HostName "john"
