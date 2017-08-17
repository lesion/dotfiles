install_default_server_packages () {
  sudo apt update
  sudo apt upgrade

  sudo apt install vim \
    zsh \
    git \
    htop \
    curl \
    wget \
    aptitude

  sudo apt autoremove
  sudo apt autoclean
  sudo apt clean

  curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

}