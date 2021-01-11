#!/bin/bash
val=$(systemctl status bluetooth.service | grep Active)
if [[ $val == *"inactive (dead)"* ]]; then
  echo ""
else
  echo ""
fi

