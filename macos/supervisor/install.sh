MAC_BASE_DIR="$HOME/.xiaomo/source/macos"

sudo pip install supervisor
sudo touch /var/run/supervisor.sock
sudo chmod 777 /var/run/supervisor.sock

ln -sf ""$MAC_BASE_DIR"/supervisor/supervisord.conf" "$HOME/.supervisord.conf"

