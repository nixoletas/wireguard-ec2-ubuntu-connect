sudo apt install -y wireguard

WG_CONFIG="/etc/wireguard/wg0.conf"

if [[ -f "./peer.conf" ]]; then
    sudo cp ./peer.conf $WG_CONFIG
else
    echo "peer.conf file not found. Make sure it is placed on the current directory."
    exit 1
fi

sudo chmod 600 $WG_CONFIG

# Activate interface
sudo wg-quick up wg0

# autostart on startup
sudo systemctl enable wg-quick@wg0

echo "Wireguard installed and successfully configured!"
