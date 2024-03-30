#!/usr/bin/env bash

# init mac for dev
xcode-select --install
sudo xcodebuild -license accept

# install homebrew, if not installed
if ! command -v brew &> /dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/cvs/.zshrc
  eval "$(/opt/homebrew/bin/brew shellenv)"
  . ~/.zsh
fi

# download dotfiles and execute
# git clone https://github.com/knightoftheoldcode/dotfiles.git

brew install git just

brew update && brew outdated && brew upgrade && brew bundle --file=~/.config/brew/Brewfile && brew cleanup

. /opt/homebrew/opt/asdf/libexec/asdf.sh
(echo; echo '. /opt/homebrew/opt/asdf/libexec/asdf.sh') >> /Users/cvs/.zshrc

# asdf all the things
echo "== asdf plugins =="
asdf plugin add doctl
asdf plugin add nodejs
asdf plugin add postgres
asdf plugin add ruby
asdf plugin add rust

asdf install doctl latest

asdf install nodejs latest
asdf install nodejs 18.17.1

# asdf install postgres latest

asdf install ruby latest

asdf install rust latest

asdf global doctl latest
asdf global nodejs latest
# asdf global postgres latest
asdf global ruby latest 
asdf global rust latest

asdf current

# https://github.com/smashedtoatoms/asdf-postgres
# pg_ctl initdb
# pg_ctl cvs
# pg_ctl start

# generate ssh keys, upload to github if possible ... via `gh`?

# delete cloned `https` stuff and reclone with `gh`

# disable spotlight hotkey Command-Space and rebind raycast to it?


