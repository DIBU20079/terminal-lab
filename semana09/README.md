# Semana 09 - Procesos y senales

## Que hace

`monitor-procesos.sh` muestra los procesos que mas CPU y memoria consumen, cuenta cuantos hay por usuario y por estado, muestra el arbol de la sesion y demuestra el ciclo de vida de un proceso en segundo plano con `SIGTERM` y `SIGKILL`.

## Archivos

- `monitor-procesos.sh` - script principal
- `reporte-ejemplo.txt` - reporte generado con `>`
- `README.md` - este archivo

## Como se ejecuta

    cd semana09
    chmod +x monitor-procesos.sh
    ./monitor-procesos.sh
    ./monitor-procesos.sh > reporte-ejemplo.txt

## Que se aprendio

- Consulta de procesos con `ps aux --sort` y `ps -eo`.
- Lanzar procesos en segundo plano con `&` y capturar su PID con `$!`.
- Diferencia entre `SIGTERM` (peticion ordenada) y `SIGKILL` (forzado).
- Uso de `kill -0` para comprobar si un proceso sigue vivo.

## Que quedo pendiente

Extension opcional: recibir por argumento la cantidad de procesos a mostrar en el top.
