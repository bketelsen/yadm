#!/bin/sh

echo running brew.sh


# install homebrew if it's missing
if ! command -v brew >/dev/null 2>&1; then
  echo "Installing homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi
echo `which brew`
if [ -f "$HOME/.Brewfile" ]; then
  echo "Updating homebrew bundle"
  brew bundle --global
fi

