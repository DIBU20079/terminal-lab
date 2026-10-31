#!/bin/bash
# explorar-sistema.sh - Recorre la jerarquia del sistema y la documenta
# Autor: Marvin Atahuichi
# Fecha: 2026-02-15
# Uso: ./explorar-sistema.sh
# Descripcion: recorre /etc, /var, /home, /bin, /tmp y /proc y documenta su funcion

SEP="----------------------------------------"

echo "=== /etc ==="
echo "/etc guarda archivos de configuracion del sistema en texto plano."
ls -l /etc | head -n 20
echo "$SEP"
echo

echo "=== /var ==="
echo "/var guarda datos que cambian: registros, colas y caches."
ls -lh /var | head -n 20
echo "$SEP"
echo

echo "=== /home ==="
echo "/home contiene un subdirectorio por usuario con sus archivos personales."
ls -l /home
echo "$SEP"
YXÚÂ