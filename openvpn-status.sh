#!/usr/bin/env bash

GRAY="#8e959f"
CONNECTED=""
DISCONNECTED=""

if [[ $(pgrep -a openvpn$) ]]; then
    NAME=$(pgrep -a openvpn$ | head -n 1 | awk '{print $NF}')
    if [ "${NAME}" = "nm-openvpn" ]; then
        echo "${CONNECTED} $(nmcli -t -f name,type connection show --order name --active | grep vpn | head -1 | cut -d ':' -f 1)"
    else
        echo "${CONNECTED} ${NAME}"
    fi
else
    echo "${DISCONNECTED} %{F$GRAY}Disconnected%{F-}"
fi
