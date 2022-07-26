#!/usr/bin/env bash

backup_directory=$1
zip_filename=$2
destination=${3-.}

if [ "$1" == "-h" ] || [ "$2" == "-h" ] || [ "$3" == "-h" ]; then
  echo "Usage: backup.sh [-h: help] backup_directory zip_file_name destination"
  exit 0
fi

echo "Starting Compression"
zip -r $zip_filename $backup_directory
echo "Compression Finished."


echo "Starting Copying"
cp $zip_filename $destination
rm $zip_filename
echo "Copying Finished"

