#!/bin/bash
# monitor-procesos.sh - Reporte de procesos y ciclo de vida con senales
# Autor: Marvin Atahuichi
# Fecha: 2026-02-15
# Uso: ./monitor-procesos.sh
# Descripcion: muestra los procesos que mas CPU y memoria consumen,
#              resumen por usuario, estado y ciclo de vida con SIGTERM.

set -euo pipefail

echo "=== Top 5 procesos por CPU ==="
ps aux --sort=-%cpu | head -n 6
echo

echo "=== Top 5 procesos por memoria ==="
ps aux --sort=-%mem | head -n 6
echo

echo "=== Procesos por usuario ==="
ps -eo user= | sort | uniq -c | sort -nr
echo

echo "=== Procesos por estado ==="
ps -eo stat= | cut -c1 | sort | uniq -c | sort -nr
