BASE_DIR="$HOME/.xiaomo/source"

sudo pip install supervisor
sudo touch /var/run/supervisor.sock
sudo chmod 777 /var/run/supervisor.sock

ln -sf "$BASE_DIR/supervisor/supervisord.conf" "$HOME/.supervisord.conf"

