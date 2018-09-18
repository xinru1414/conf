#!/bin/bash

sudo apt install -y zsh tmux

if [[ "$SHELL" != "/bin/zsh" ]]; then
 chsh -s /bin/zsh
fi

if [ ! -d "$HOME/.pyenv" ]; then
 git clone https://github.com/pyenv/pyenv.git ~/.pyenv
fi
