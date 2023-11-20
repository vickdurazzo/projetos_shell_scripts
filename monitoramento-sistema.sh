#!/bin/bash

#Verifica o uso da CPU
cpu_usage=$(top -b -n 1 | awk '/PID/ {p=1; next} p {print $9}' | head -n 1)

#Verifica o uso da memória
memory_usage=$(free -m | awk '/Mem: / {print $3}')

#Verifica o uso do espaço em disco
disk_usage=$(df -h | grep '/dev/sda5' | awk '{print $3}')

#Imprimi os resultados
echo "CPU: ${cpu_usage}%"
echo "Memória usada: ${memory_usage} MB"
echo "Espaço em disco usado: ${disk_usage}"


