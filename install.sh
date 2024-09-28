#!/bin/bash

install_common() {
  # ohmyzsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

install_darwin() {
  brew install --cask font-jetbrains-mono-nerd-font
}

install_linux() {
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip &&
    cd ~/.local/share/fonts &&
    unzip JetBrainsMono.zip &&
    rm JetBrainsMono.zip &&
    fc-cache -fv

  cd -
}

install_common

if [[ "$OSTYPE" == "darwin"* ]]; then
  install_darwin
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
  install_linux
else
  echo "Unknown OS."
  exit 1
fi
