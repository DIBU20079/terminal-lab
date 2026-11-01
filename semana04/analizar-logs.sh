#!/bin/bash
# analizar-logs.sh - Procesa acceso.log y genera un reporte de 4 secciones
# Autor: Marvin Atahuichi
# Fecha: 2026-02-15
# Uso: ./analizar-logs.sh
# Descripcion: resume un registro Apache con cuatro tuberias independientes

LOG="acceso.log"

echo "=== Top 5 IP con mas peticiones ==="
# awk toma la columna 1 (IP); sort agrupa; uniq -c cuenta; sort -nr ordena de mayor a menor
awk '{print $1}' "$LOG" | sort | uniq -c | sort -nr | head -n 5

echo
echo "=== Conteo por codigo de estado ==="
# El estado es el campo 9 en el formato Apache usado aqui
awk '{print $9}' "$LOG" | sort | uniq -c | sort -n

echo
echo "=== Lineas con error 500 ==="
# Los espacios alrededor de 500 evitan coincidir con tamanos o rutas
grep " 500 " "$LOG" || echo ((ninguna)"
