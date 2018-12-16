#!/bin/sh
# /usr/syno/etc/rc.d/S99mediamon.sh

export LANG='en_US.utf8'
#env >&2

case "$1" in
  start|"")
    #start the monitoring daemon
    python3 /volume1/homes/darthvader/mediamon.py
    ;;
  restart|reload|force-reload)
    echo "Error: argument '$1' not supported" >&2
    exit 3
    ;;
  stop)
    kill `cat /var/run/mediamon.pid`
    ;;
  *)
    echo "Usage: S99mediamon.sh [start|stop]" >&2
    exit 3
    ;;
esac
