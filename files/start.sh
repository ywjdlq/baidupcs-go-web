#!/bin/sh

set -e

PUID=${PUID:=0}
PGID=${PGID:=0}
PORT=${PORT:=9999}

chown $PUID:$PGID -R /files
chown $PUID:$PGID -R /root/Downloads

exec s6-setuidgid $PUID:$PGID /files/BaiduPCS-Go web --port $PORT