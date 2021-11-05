#!/bin/bash

BASE_DIR="$HOME/.g123"

createLinks() {
  # for configuration` in $HOME
  ln -sf "$BASE_DIR/mac_config/hammerspoon" "$HOME/.hammerspoon"
  echo "$BASE_DIR/mac_config/hammerspoon" link to "$HOME/.hammerspoon"

  ln -sf "$BASE_DIR/mac_config/alias.sh" "$HOME/.alias"
  echo "$BASE_DIR/mac_config/alias.sh" link to "$HOME/.alias"

  ln -sf "$BASE_DIR/mac_config/envrc.sh" "$HOME/.envrc"
  echo "$BASE_DIR/mac_config/envrc.sh" link to "$HOME/.envrc"

  rm -rf "$HOME/.zshrc"
  ln -sf "$BASE_DIR/mac_config/zshrc" "$HOME/.zshrc"
  echo "$BASE_DIR/mac_config/zshrc" link to "$HOME/.zshrc"

  ln -sf "$BASE_DIR/mac_config/gitconfig" "$HOME/.gitconfig"
  echo "$BASE_DIR/mac_config/gitconfig" link to "$HOME/.gitconfig"

  ln -sf "$BASE_DIR/mac_config/inputrc.sh" "$HOME/.inputrc"
  echo "$BASE_DIR/mac_config/inputrc.sh" link to "$HOME/.inputrc"

  ln -sf "$BASE_DIR/mac_config/snape.json" "$HOME/.snape.json"
  echo "$BASE_DIR/mac_config/snape.json" link to "$HOME/.snape.json"

  ln -sf "$BASE_DIR/mac_config/terrmaformrc" "$HOME/.terrmaformrc"
  echo "$BASE_DIR/mac_config/terrmaformrc" link to "$HOME/.terrmaformrc"

  # for configuration in .config
  mkdir -p "$HOME/.config"
  ln -sf /usr/local/bin/python3 /usr/local/bin/python
  echo /usr/local/bin/python3 link to /usr/local/bin/python

  ln -sf /usr/local/bin/pip3 /usr/local/bin/pip
  echo /usr/local/bin/pip3 link to /usr/local/bin/pip
}

cloneMacConfigFromGithub
homebrew
pythonPackages
writeDefaults
createLinks
