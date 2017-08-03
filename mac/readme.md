# Setting Up (for Mac)

1. [Homebrew](https://brew.sh/)
1. [iTerm2](http://iterm2.com/downloads.html)
1. Get rid of last login message: `touch ~/.hushlogin`
1. Install zsh:
  1. `brew install zsh`
  1. `chsh -s /usr/local/bin/zsh`
  1. (or go to System Preferences -> Users & Groups -> Click the lock -> Right click your user -> Advanced Options -> and paste /usr/local/bin/zsh in the login shell field)
1. Install oh-my-zsh: `curl -L http://install.ohmyz.sh | sh`
1. Replace .zshrc with mine in this repo.
1. Load iTerm settings from this repo.
1. Install exa (Nice alternative to `ls`): `brew install exa`
