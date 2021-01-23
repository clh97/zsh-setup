#!/bin/bash

# zsh setup

sudo apt-get install -y curl wget git zsh

# be sure to have sudo permission in terminal session before executing

chsh -s $(which zsh)

sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf -P /usr/share/fonts/
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf -P /usr/share/fonts/
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf -P /usr/share/fonts/
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf -P /usr/share/fonts/

sed -i 's/(git)/(git go kubectl minikube docker docker-compose zsh-autosuggestions zsh-syntax-highlighting)/g' ~/.zshrc

sed -i 's/robbyrussell/powerlevel10k\/powerlevel10k/g' ~/.zshrc
