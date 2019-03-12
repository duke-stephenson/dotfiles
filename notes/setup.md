# Links
- http://burnedpixel.com/blog/beginners-setup-guide-for-ruby-node-git-github-on-your-mac/
- http://olivierlacan.com/posts/why-is-git-https-not-working-on-github/
- https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/
- https://stackoverflow.com/questions/47455300/ssh-config-bad-configuration-option-usekeychain-on-mac-os-sierra-10-12-6
- https://github.com/github/hub/issues/1596
- https://superuser.com/questions/302754/increase-the-maximum-number-of-open-file-descriptors-in-snow-leopard
- https://wilsonmar.github.io/maximum-limits/

# Very start
- `xcode-select --install`
- install brew and zsh
- `sudo vi /etc/shells` and add brew zsh
- `chsh -s /usr/local/bin/zsh`  
- `git clone --recurse-submodules https://github.com/j-walker23/dotfiles.git ~/.dotfiles`
- `cd ~/.dotfiles`
- `script/bootstrap`
- `script/install`
- When git push fails, add personal access token as password.
- When using hub you will need to enter git creds again.
- `sudo mkdir /code`
- `sudo chown john:staff /code`
- Manually remap capslock in keyboard prefs
- Set solarized as default in terminal prefs
- Grab .localrc, vmoptions, develop_settings.py, nginx/ file from backup
- copy .ssh/
- Setup ngrok
- 




# Set ignored paths for timemachine
