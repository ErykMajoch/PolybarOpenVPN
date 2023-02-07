#!/usr/bin/env bash

GRAY="#8e959f"
CONNECTED=""
DISCONNECTED=""

if [[ $(pgrep -a openvpn$) ]]; then
    NAME=$(pgrep -a openvpn$ | head -n 1 | awk '{print $NF}')
    if [ "${NAME}" = "nm-openvpn" ]; then
        echo "${CONNECTED} OpenVPN"
    else
        echo "${NAME}"
    fi
else
    echo "${DISCONNECTED} %{F$GRAY}Disconnected%{F-}"
fi
