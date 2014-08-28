#!/bin/bash
HOST='10.11.12.13'
USER='helloFTP'
PASSWD='world' 

ftp $HOST << EOT
user $USER $PASSWD
mget webtrekk_marketing* home/Marketing\ Report/Data/
cd home/Marketing\ Report/Scripts/
python ZMR.py
cd home/Marketing\ Report/Scripts/
psql
EOT
