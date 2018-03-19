# install default client/server package
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

  # install oh my zsh
  curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

}

install_dot_files () {
  git clone https://github.com/lesion/dotfiles.git ~/.dotfiles
  ln -s ~/.dotfiles/.vimrc ~/.vimrc
  ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
}