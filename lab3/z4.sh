#!/bin/bash


user=$(whoami)
katalog_backup="$HOME/.backups"
prog_zuzycia=10

uzycie_miejsca=$(df -h "$katalog_backup" | awk '{print $3}')

if [ $(echo "$uzycie_miejsca > $prog_zuzycia" | bc) -eq 1 ]; 
then

  echo "Uwaga! Użycie przestrzeni dyskowej przez kopie zapasowe w katalogu $katalog_backup przekracza $prog_zuzycia GB!" | mail -s "Uwaga: Duże zużycie miejsca przez backupy" "$user"

fi
