#!/bin/bash

# Copy files
cp ./images/* $HOME/Pictures/

# Download debs
wget -P $HOME/Downloads https://mega.nz/linux/MEGAsync/xUbuntu_18.04/amd64/megasync-xUbuntu_18.04_amd64.deb
wget -P $HOME/Downloads https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget -P $HOME/Downloads https://github.com/sharkdp/bat/releases/download/v0.9.0/bat-musl_0.9.0_amd64.deb

# Install debs
sudo apt install -y $HOME/Downloads/*.deb

# Add software sources
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

# Sublime merge
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
# sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

# uget
sudo apt-add-repository ppa:plushuang-tw/uget-stable


sudo apt update

sudo apt install -y \
    apt-transport-https \
    build-essential \
    pandoc \
    shunit2 \
    curl \
    debhelper \
    htop \
    mysql-client mysql-server mysql-workbench \
    megacmd \
    python-dev \
    python3-dev \
    python-pip \
    python3-pip \
    ruby-full \
    redis-server \
    snapd \
    sublime-text \
    sublime-merge \
    terminator \
    uget aria2 \
    vagrant \
    vim vim-gtk3 \
    virtualbox \
    virtualenv virtualenvwrapper\
    xclip


sudo snap install postman
sudo snap install vscode --classic
sudo snap install insomnia

# Install nvm
get_latest_release() {
  curl --silent "https://api.github.com/repos/$1/releases/latest" | # Get latest release from GitHub api
    grep '"tag_name":' |                                            # Get tag line
    sed -E 's/.*"([^"]+)".*/\1/'                                    # Pluck JSON value
}
curl -o- https://raw.githubusercontent.com/creationix/nvm/$(get_latest_release "creationix/nvm")/install.sh | bash

# Install node js
nvm install node

# install grunt
sudo npm install -g grunt-cli
# Install create-react-app for react js
npm install -g create-react-app

#  Install docker
sudo apt remove docker docker-engine docker.io

sudo apt install -y docker-ce

sudo groupadd docker
sudo usermod -aG docker $USER

# Install docker-compose
pip install docker-compose


# install watchman
git clone https://github.com/facebook/watchman.git
cd watchman
git checkout v4.9.0  # the latest stable release
./autogen.sh
./configure
make
sudo make install
cd ..


# Install Jumpapp
git clone https://github.com/mkropat/jumpapp.git
cd jumpapp
make deb
sudo dpkg -i jumpapp*all.deb
make clean
cd ..

sudo apt-get -y install -f	# if there were missing dependencies

# install vnote
wget -P $HOME/Downloads  https://github.com/tamlok/vnote/releases/download/v2.2/VNote-2.2-x86_64.AppImage
sudo mkdir /opt/vnote
sudo mv $HOME/Downloads/VNote-2.2-x86_64.AppImage /opt/vnote/
sudo ln -sf /opt/vnote/VNote-2.2-x86_64.AppImage /usr/bin/vnote

# install rustp, cargo and rust
curl https://sh.rustup.rs -sSf | sh


# install rbenv for ruby
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash
    # doctor for rbenv verification
    curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash


cd $HOME/dotfiles/

# Clear downloaded debs
rm $HOME/Downloads/*.deb

sudo apt upgrade

# Fix broken packages just in case
sudo apt-get install -f

# Clean all generated files
git clean -f

# Import gnome desktop settings
# dconf load /org/gnome/ < ./gnome.conf
dconf load /org/cinnamon/ < ./cinnamon.conf

# Finally install zsh
sudo apt-get install zsh

# oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"


echo "YOU ARE DONE :)"
