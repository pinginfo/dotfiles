#!/bin/bash
if [[ -e ~/.config/polybar/scripts/VQHA80.csv ]]; then
  rm ~/.config/polybar/scripts/VQHA80.csv
fi

wget https://data.geo.admin.ch/ch.meteoschweiz.messwerte-aktuell/VQHA80.csv -O ~/.config/polybar/scripts/VQHA80.csv &>/dev/null

if [[ -e  ~/.config/polybar/scripts/VQHA80.csv ]]; then
  temp=$(sed -n 56p ~/.config/polybar/scripts/VQHA80.csv | sed 's/^[^;]*;//'| sed 's/^[^;]*;//' | sed 's/;.*//')
  rain=$(sed -n 56p ~/.config/polybar/scripts/VQHA80.csv | sed 's/^[^;]*;//'| sed 's/^[^;]*;//'| sed 's/^[^;]*;//' | sed 's/;.*//')
  speed=$(sed -n 56p ~/.config/polybar/scripts/VQHA80.csv | sed 's/^[^;]*;//'| sed 's/^[^;]*;//'| sed 's/^[^;]*;//' | sed 's/^[^;]*;//' | sed 's/^[^;]*;//' | sed 's/^[^;]*;//' | sed 's/^[^;]*;//' | sed 's/^[^;]*;//' | sed 's/^[^;]*;//' | sed 's/;.*//')
  echo ${temp}"°C - "${rain}"MM - "${speed}"KM/H"
else
  echo "-"
fi
