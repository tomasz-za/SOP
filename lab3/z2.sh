#!/bin/bash

user=$(whoami)
data_wykonania=$(date +"%Y-%m-%d")
backup_lib="$HOME/.backups"

if [ ! -d "$backup_lib" ]; 
then
  mkdir "$backup_lib"
fi

cd ~/Dokumenty

pliki_do_skompresowania=$(find . -type f -name "*.txt")
tar -cvf "$backup_lib/[user]_backup_[data_wykonania].tar.gz" $pliki_do_skompresowania

