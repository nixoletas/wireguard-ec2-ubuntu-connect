### how to run the script (ubuntu client)

on the same folder of the script, create a **"peer.conf"** file and paste the peerconf of your wireguard server and then run the script.

peer.conf example

```conf
[Interface]
Address = 10.13.13.3
PrivateKey = uAUXUXJD1kDsqiT3hGENJafCxyOPGxvBoRJCAUzMC8mmA=
ListenPort = 51820
DNS = 10.13.13.1

[Peer]
PublicKey = cWzbghdzFrjregDeq+xhF5R6U/AU8k+iw5BSsks3TWQ=
PresharedKey = b1jG39wT4Uvr4BGV3rvZ5/QX6KXoa0sRN1RCmpo6A=
Endpoint = 54.80.8.31:
```
