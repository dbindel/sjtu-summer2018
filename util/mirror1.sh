#!/bin/bash

if [[ -z $DBUS_SESSION_BUS_ADDRESS ]]; then
  dbus_file=/home/bindel/.dbus/session-bus/$(dbus-uuidgen --get)-0
  if [[ -f $dbus_file ]]; then
    source $dbus_file
    export DBUS_SESSION_BUS_ADDRESS
  fi
fi

cd /home/bindel/work/class/sjtu-summer18/web
git pull origin
rake deploy
