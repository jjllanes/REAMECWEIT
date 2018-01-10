#!/bin/bash

echo "=========================================================================================="
echo "Esta es la IP interna"
ip  -f inet a show eth0| grep inet| awk '{ print $2}' | cut -d/ -f1
echo "=========================================================================================="
echo "Este es el espacio disponible y espacio disponible del disco(Exp en MB)"
df -h
echo "=========================================================================================="
echo "Esta es la RAM libre y la RAM usada(expresada en MB)"
free -m
echo "=========================================================================================="
echo "Esta es la version de OS instalada"
cat /etc/redhat-release
echo "=========================================================================================="
echo "Estas son las Reglas de IPtables"
iptables -L
echo "=========================================================================================="
echo "Ultimas diez personas logeadas en el Servidor"
last -n 10
echo "=========================================================================================="
