#!/bin/bash

# pre install for docker image
# su -
# apt-get install sudo
# usermod -aG sudo root
# sudo apt-get update

# Install dependencies
sudo apt-get install -y
sudo apt-get install git nano curl -y

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# add brew to PATH
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/codespace/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Install zsh
brew install zsh rust kubernetes-cli kubectx awscli gh minikube node nvm pnpm postgresql python@3.10 sqlite terraform

# add nvm to path
mkdir ~/.nvm
export NVM_DIR="$HOME/.nvm"
