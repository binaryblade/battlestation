#!/usr/bin/env bash

# TODO: Update for `zinit` dotfiles ... make this be able to create a good basic `.zshrc`

# init mac for dev
xcode-select --install
sudo xcodebuild -license accept

# install homebrew, if not installed
if ! command -v brew &> /dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/cvs/.zshrc
  eval "$(/opt/homebrew/bin/brew shellenv)"
  . ~/.zshrc
fi

# download dotfiles and execute
# git clone https://github.com/knightoftheoldcode/dotfiles.git

brew install git just

brew update && brew outdated && brew upgrade && brew bundle --file=~/.config/brew/Brewfile && brew cleanup

# only do below if not present
# (echo; echo '. /opt/homebrew/opt/asdf/libexec/asdf.sh') >> /Users/cvs/.zshrc

# starship

# only do below if not present
# (echo; echo 'eval "$(starship init zsh)"') >> /Users/cvs/.zshrc

# ALSO REMEMBER WE DON'T HAVE TO TOSS EVERYTHING INTO
# `.zshrc`. We want it nice and usable if someone doesn't have their
# `dotfiles` decided yet (they really should pickup the default
# `binaryblade` `dotfiles` and edit from there) BUT not everyone will
# want to do that. And that's ok. That's what FOSS is all about
# I'm not currently sure what the default "minimal" `.zshrc` should
# look like though.


# asdf all the things
echo "== asdf plugins =="
asdf plugin add doctl
asdf plugin add nodejs
asdf plugin add postgres
asdf plugin add restic
asdf plugin add ruby
asdf plugin add rust

asdf plugin update --all

asdf install doctl latest
asdf install nodejs latest
asdf install nodejs 18.17.1
# asdf install postgres latest
asdf install restic latest
asdf install ruby latest
asdf install rust latest

asdf global doctl latest
asdf global nodejs latest
# asdf global postgres latest
asdf global restic latest
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


