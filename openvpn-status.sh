#!/usr/bin/env bash

GRAY="#8e959f"

if [[ $(pgrep -a openvpn$) ]]; then
    echo " OpenVPN"
else
    echo " %{F$GRAY}Disconnected%{F-}"
fi
