# Semana 06 - Bash: fundamentos

## Que hace

`info-sistema.sh` genera un reporte del sistema que cambia segun el argumento recibido: sin argumentos muestra el resumen general (kernel, distribucion, tiempo encendido y memoria), con `-u` los datos del usuario y con `-d` el uso de disco. Con `-h` muestra la ayuda.

## Archivos

- `info-sistema.sh` - script principal
- `salida-ejemplo.txt` - salida de las tres opciones validas
- `README.md` - este archivo

## Como se ejecuta

    cd semana06
    chmod +x info-sistema.sh
    ./info-sistema.sh
    ./info-sistema.sh -u
    ./info-sistema.sh -d
    ./info-sistema.sh -h

## Que se aprendio

- Uso de `set -euo pipefail` y `${1:-}` para argumentos opcionales.
- Despacho de opciones con `case`.
- Envio de ayuda y errores a stderr con `>&2`.
- Codigos de salida `xit 0` (exito) y `exit 2` (uso incorrecto).

## Que quedo pendiente

Extension opcional: aceptar varias opciones en una sola llamada.
