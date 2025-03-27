How to setup dotfiles:
```
mkdir -p ~/.local/bin
curl -fLo ~/.local/bin/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm
chmod a+x ~/.local/bin/yadm
~/.local/bin/yadm clone git@github.com:d-3nnis/d_env.git
~/.local/bin/yadm bootstrap
```
