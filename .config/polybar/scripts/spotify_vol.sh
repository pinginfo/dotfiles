#!/bin/bash
if [[ -z $(mpc --host 127.0.0.1 -p 6600 volume 2>/dev/null) ]];then
  echo " off"
else
  echo "" $(mpc --host 127.0.0.1 -p 6600 volume | sed 's/^[^:]*://')" "
fi

