#!/bin/bash
# info-sistema.sh - Reporte del sistema con opciones -u, -d y -h
# Autor: Marvin Atahuichi
# Fecha: 2026-02-15
# Uso: ./info-sistema.sh [-u] [-d] [-h]
# Codigosde salida: 0 exito, 2 uso incorrecto

set -euo pipefail

uso() {
    echo "Uso: $0 [-u] [-d] [-h]" >&2
    echo "  sin argumentos  resumen general del sistema" >&2
    echo "  -u              datos del usuario" >&2
    echo "  -d              uso de disco" >&2
    echo "  -h              muestra esta ayuda" >&2
    exit 2
}

if [[ "${1:-}" == "-h" ]]; then
    uso	fi
