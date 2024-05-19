#!/bin/bash

# Colores
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # Sin color

function cpu_benchmark {
    echo -e "${YELLOW}Ejecutando prueba de rendimiento del CPU...${NC}"
    result=$(sysbench --test=cpu --cpu-max-prime=20000 run 2>&1)
    events_per_second=$(echo "$result" | grep "events per second:" | awk '{print $4}')
    total_time=$(echo "$result" | grep "total time:" | awk '{print $3}')

    echo -e "${GREEN}Resultados del CPU Benchmark:${NC}"
    echo -e "${BLUE}Velocidad del CPU (eventos por segundo):${NC} $events_per_second"
    echo -e "${BLUE}Tiempo total de la prueba (s):${NC} $total_time"
}

function memory_benchmark {
    echo -e "${YELLOW}Ejecutando prueba de rendimiento de la memoria...${NC}"
    result=$(sysbench --test=memory --memory-block-size=1M --memory-total-size=1G run 2>&1)
    total_ops=$(echo "$result" | grep "Total operations:" | awk '{print $3}')
    ops_per_second=$(echo "$result" | grep "per second:" | awk '{print $1}')
    total_time=$(echo "$result" | grep "total time:" | awk '{print $3}')
    transfer_rate=$(echo "$result" | grep "transferred" | awk '{print $1}')

    echo -e "${GREEN}Resultados del Memoria Benchmark:${NC}"
    echo -e "${BLUE}Total de operaciones:${NC} $total_ops"
    echo -e "${BLUE}Operaciones por segundo:${NC} $ops_per_second"
    echo -e "${BLUE}Tiempo total de la prueba (s):${NC} $total_time"
    echo -e "${BLUE}Tasa de transferencia (MiB/seg):${NC} $transfer_rate"
}

clear
echo -e "${GREEN}Selecciona la prueba de rendimiento que deseas ejecutar:${NC}"
echo -e "${YELLOW}1) CPU${NC}"
echo -e "${YELLOW}2) Memoria${NC}"
read -p "Ingrese el número de su opción: " choice

clear

case $choice in
    1)
        cpu_benchmark
        ;;
    2)
        memory_benchmark
        ;;
    *)
        echo -e "${RED}Opción no válida. Saliendo.${NC}"
        ;;
esac
