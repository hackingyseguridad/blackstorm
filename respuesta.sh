#!/bin/bash
# Script para ver respuesta ICMP Tipo 3 Code 3 al enviar paquetes a puertos UDP filtrados, en las IP del fichero ips.txt
for n in `cat ips.txt`; do echo $n; hping3 -2 $n -p 53 -c 1 |grep ICMP; done
