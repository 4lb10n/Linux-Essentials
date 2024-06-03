#!/usr/bin/env bash

ip route del default
ip addr del 192.168.100.10/24 dev eth0
ip set eth0 down