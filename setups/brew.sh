 

#!/bin/bash

if ! [ -x "$(command -v brew)" ]; then
  echo 'Installing brew...'
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

echo 'Checking for brew updates...'
brew update
brew upgrade

brew_commands=( "nvm" "wget" "jq" "pyenv" "lazygit" )

for cmd in "${brew_commands[@]}"
do
    if ! [ -x "$(command -v $cmd)" ]; then
      echo "Installing '$cmd' from brew..."
      brew install "$cmd"
    fi
done