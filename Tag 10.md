# Tag 9

## Installation von Devuan

- System V Init
- Generation 1 Maschine
- Leistungsfeststellung

## Installation MX Linux

- Generation 1
- 32 GB Festplatte
  - Loadkeys de-latin1 für DE layout
  - die platte wird wie folgt eingerichtet:
    - label dos
    - sda 1 primäre 20G Linux Filesystem
    - sda2 extended 12G extended Filesystem
      - sda5 4G swap
      - sda6 8G Linux
  
### Konfiguration

#### Tastatur layout anpassen

- sudo vi /etc/default/keyboard
  - bei XKBLAYOUT="de"
  - bei XKBVARIANT=""
  
#### Zeitzone anpassen

- sudo ln -s /usr/share/zoneinfo/Europe/Berlin /etc/localtime

#### Grafik System

- su-
- Xorg -configure
- grep BusID xorg.conf.new
- /etc/x11/xorg.conf.d/99-fbdev.conf
  - Section "Device"
    Identifer "Card0"
    Driver  "fbdev"
    BusID   "PCI:0:8:0"
  EndSection
