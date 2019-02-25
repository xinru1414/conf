#!/bin/bash

sudo apt install -y zsh tmux make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils libxml2-dev libffi-dev
sudo apt install -y tk-dev libxmlsec1-dev

if [[ "$SHELL" != "/bin/zsh" ]]; then
 chsh -s /bin/zsh
fi

if [ ! -d "$HOME/.pyenv" ]; then
 git clone https://github.com/pyenv/pyenv.git ~/.pyenv
fi
