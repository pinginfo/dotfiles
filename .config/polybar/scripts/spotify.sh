#!/bin/bash

if [[ ! -n $(ps | grep mopidy) ]]; then
    mopidy &>/dev/null &
fi

firefox http://127.0.0.1:6680/iris/