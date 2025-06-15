# NoIP-IPv6
Script shell para envio do IPv6 ao NOIP

Adicione o script ao diretorio 

nano /usr/local/bin/atualiza-noip.sh

Torne executavél:

sudo chmod +x /usr/local/bin/atualiza-noip.sh

Crie o agendamento de execução:

sudo crontab -e

Adicione no final do arquivo a expressão abaixo:

*/5 * * * * /usr/local/bin/atualizanoip.sh >> /var/log/noip6.log 2>&1

Verifique se está funcionando:

tail -f /var/log/noip6.log

Resposta esperada:

good 179.151.216.26,2804:18:7040:4811:f79e:6011:8502:e6ae
