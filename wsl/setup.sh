#!/bin/bash

set -efux -o pipefail

sudo apt update
sudo apt install -y \
	make gpg

sudo apt install -y \
	pass pandoc tig

# aws-cli tfenv tfswitch pyenv poetry

readonly zsh=$(which zsh)

if [[ -z $zsh ]]
then
	echo "Installing OhMyZsh"
	sudo apt install -y zsh
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
