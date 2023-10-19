#!/bin/bash
sudo apt update -y
sudo apt update -y
sudo apt install vim -y
sudo apt install build-essential -y
sudo apt install git -y
sudo apt install i3 -y
sudo apt install tmux -y
sudo apt install zsh -y
sudo apt install zsh-autosuggestions -y
sudo apt install feh -y
sudo apt install xclip -y
sudo apt-get install ripgrep -y
sudo apt install fzf -y


curl -L https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-Linux-x86_64.sh -o Mambaforge-Linux-x86_64.sh
bash Mambaforge-Linux-x86_64.sh


git clone https://github.com/RdrigoE/configs.git
wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
chmod u+x nvim.appimage && ./nvim.appimage

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

mv configs/* .config

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mv configs/.zshrc ~
mv configs/.bashrc ~

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
bash Miniforge3-$(uname)-$(uname -m).sh

sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
sudo apt-get install nodejs -y

sudo apt install php
wget https://raw.githubusercontent.com/composer/getcomposer.org/76a7060ccb93902cd7576b67264ad91c8a2700e2/web/installer -O - -q | php -- --quiet
sudo mv composer.phar /usr/local/bin/composer
sudo apt install php-xml
sudo apt install php-curl

sudo apt install python3.11

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/IosevkaTerm.zip
mkdir ~/.local/share/fonts -p
mv IosevkaTerm.zip ~/.local/share/fonts
cd ~/.local/share/fonts
unzip IosevkaTerm


sudo apt-get install uuid-runtime
git clone https://github.com/nordtheme/gnome-terminal.git\ncd nord-gnome-terminal/src
cd gnome-terminal/src
bash nord.sh

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# open tmux and prefix+I
mkdir ~/.local/bin -p
mv ~/.config/tmux-sessionalizer ~/.local/bin

#change font in preferences
#packer sync in nvim

