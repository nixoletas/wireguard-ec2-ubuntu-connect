sudo apt install -y wireguard

# Cria o arquivo de configuração do WireGuard
WG_CONFIG="/etc/wireguard/wg0.conf"

# Verifica se o arquivo peer.conf existe
if [[ -f "./peer.conf" ]]; then
    # Copia o conteúdo do arquivo peer.conf para wg0.conf
    sudo cp ./peer.conf $WG_CONFIG
else
    echo "O arquivo peer.conf não foi encontrado. Certifique-se de que ele está no diretório atual."
    exit 1
fi

# Configura permissões para o arquivo
sudo chmod 600 $WG_CONFIG

# Ativa a interface WireGuard
sudo wg-quick up wg0

# Habilita o WireGuard para iniciar automaticamente na inicialização
sudo systemctl enable wg-quick@wg0

echo "WireGuard instalado e configurado com sucesso!"
