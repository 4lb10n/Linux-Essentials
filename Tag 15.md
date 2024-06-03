# Tag 15

-custom netzwerk einstellung

## Netzwerk Verbindung

### Hardware überprüfen

- lspci = zeigt uns pci devices
- lsmod = zeigt und aktuell geladene Module

mit dem Befehl `sudo find /sys -name eth0`

`udevadm info --query path /sys/class/net/eth0` Zeigt uns device id der Netzwerkschnittstelle an.

`udevadm info --attribute-walk --path $(udevadm info --query path /sys/class/net/eth0)` Zeigt uns die Attribute der Netzwerkschnittstelle an.

### Netzwerkkarte Manuell einrichten

#### NetworkManager Deaktivieren

- `systemctl disable NetworkManager`
- `systemctl stop NetworkManager`

#### IP Address setzen

`ip addr add "ip Adresse/prefixlänge" broadcast + dev eth0`

#### Route setzen

`ip route add default via 192.168.100.1 dev eth0`

#### DNS Auflösung

Wir tragen in der Datei `/etc/resolv.conf` folgendes ein:
`Nameserver ip des DNS servers`

#### Ip Adresse fest setzten

Wir erstellen uns ein Script was, wir in einen dienst umwandeln.
Mit dem Script [net-setup](./Scripte/net-setup.sh) stellen wir die Internet Verbindung her und mit dem Script [net-shutdown](./Scripte/net-shutdown.sh) machen wir dies wieder rückgängig

## Script als Dienst einrichten

vier Verzeichnisse die wichtig sind:

`/etc/systemd` configs

`/usr/lib/systemd` Dienste

`/etc/systemd/system` einige targets

`/usr/lib/systemd/system` alle targets

### Grundbefehle

`pstree` zeigt uns alle laufenden Dienste [Output_pstree](./Outputs/Output_pstree.md)

`systemctl isolate` isoliert das gewünschte target und führt nur dieses aus.

### Systemd units

Es gibt verschiedene Unit Typs:

- .service = starte Prozesse
- .timer = starten andere units nach einer bestimmten zeit
- .socket = starten units wenn eine aktion auf einen überwachten socket passiert.
- .link
- .mount
- .path
- .device
- .targets

## Unit schreiben

Wir erstellen im Verzeichnis /etc/systemd/system/ eine Datei als beispiel [demo.service](./Units/demo.service).

Was haben wir hier:
`[Unit]`

Beschreibung der Unit. `Description=`.

Was für eine Unit ist es. `[Service]`

- `Type=` Legt denn Typen fest.
- `ExecStart=` Was wird ausgeführt.
- `RemainAfterExit=` sagt das der Dienst nicht beendet wird, wenn der wert auf true ist.
- PIDFile= Verzeichnis des Kindprozess

mit dem Befehl `journalctl -u demo.service` bekommen wir denn ausschnitt aus dem die [unserem Dienst](./Outputs/Output_journalctl.md) betrifft.
