# terraform 管理
brew install tfenv
tfenv install 1.0.9
tfenv use 1.0.9
terraform -v

# terraform config
ln -sf "$BASE_DIR/source/terraform/terrmaformrc" "$HOME/.terrmaformrc"
echo "$BASE_DIR/source/terraform/terrmaformrc" link to "$HOME/.terrmaformrc"
