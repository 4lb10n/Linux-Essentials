#!/usr/bin/env bash

ip link set eth0 up
ip addr add 192.168.100.10/24 broadcast + dev eth0
ip route add default via 192.168.100.1 dev eth0