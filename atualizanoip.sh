#!/bin/bash

USERNAME="seu usuario noip"
PASSWORD="senha noip"
HOSTNAME="seudominio.ddns.net"
INTERFACE="eth0" "verifique sua interface via ifconfig  ou ip a para verificar em qual interface está chegando seu endereço IPv6. ex: ens, esp0s1"

# Captura o IPv6 global da interface
IPV6=$(ip -6 addr show dev "$INTERFACE" scope global | grep inet6 | awk '{print $2}' | cut -d/ -f1 | head -n1)

# Executa a atualização no No-IP
curl -s -u "$USERNAME:$PASSWORD" \
  "https://dynupdate.no-ip.com/nic/update?hostname=$HOSTNAME&myipv6=$IPV6"
