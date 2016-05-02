#!/bin/bash
# Directorio de Backups
backup_dir="/home/arita/backup/"
#Cadena (fecha y hora a añadir)
backup_date=`date +%d-%m-%Y_%H:%M`
#Nombre de la base de datos a respaldar
bd="musicdb"
echo Realizando Backup de $bd a $backup_dir$bd\_$backup_date.backup
pg_dump -Fc musicdb > $backup_dir$bd\_$backup_date.backup

