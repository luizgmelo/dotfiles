#!/bin/bash

# I3 
/usr/lib/apt/apt-helper download-file https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2024.03.04_all.deb keyring.deb SHA256:f9bb4340b5ce0ded29b7e014ee9ce788006e9bbfe31e96c09b2118ab91fca734
sudo apt install ./keyring.deb
echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" | sudo tee /etc/apt/sources.list.d/sur5r-i3.list

# Brave Browser 
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gp
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.li

# TimeShift ppa
sudo add-apt-repository -y ppa:teejee2008/timeshift

# Neovim Unstable
sudo add-apt-repository ppa:neovim-ppa/unstable

sudo apt update

# Apt 
sudo apt install -y i3
sudo apt install -y lxappearance
sudo apt install -y nitrogen 
sudo apt install -y git
sudo apt install -y curl
sudo apt install -y make
sudo apt install -y ripgrep
sudo apt install -y kitty 
sudo apt install -y zsh
sudo apt install -y brave-browser 
sudo apt install -y firefox 
sudo apt install -y gimp 
sudo apt install -y tmux
sudo apt install -y code
sudo apt install -y snapd
sudo apt install -y timeshift
sudo apt install -y neovim
# Snaps
sudo snap install discord
sudo snap install authy
sudo snap install onlyoffice-desktopeditors
sudo snap install postman

# Config user for use zshell
sudo usermod -s /usr/bin/zsh $(whoami)
# Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# LunarVim
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)
# Asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
# Install python, node and java
asdf plugin add java
asdf plugin add nodejs
asdf plugin add python
asdf plugin add rust
asdf install java adoptopenjdk-8.0.402+6
asdf install nodejs 16.0.0
asdf install python latest
asdf install nodejs latest
asdf install rust 1.75.0 
asdf install rust latest
