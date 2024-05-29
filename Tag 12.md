# Tag 12

- Partitionierung
- Projekt

## Partitionierung

Die Partitionierung richtig sich nach dem FHS
folgende dinge sollten wenn möglich beachtet werden:

- Wenn Möglich immer RAID einsetzen
- Fileserver (SAMBA): extra Platte/Partition nur diesen Zweck
- Mail- oder Druckserver: viel Platz für die Spool-Ordner in /var
- Generell im Serverbereich: `/var`-Order mit Logs auf eigene Platte/Partition
- Mehrbenutzersysteme: `/home` auf eigene Platte/Partition
- Optionale Software (`/opt`): definitiv eigene Platte/Partition

Die früher oft gewählten Partitionen für `/boot` und `/usr` sind nicht mehr nötig, maximal der /usr/local/-Bereich falls extensiv genutzt. Die anderen beiden lassen sich durch Neu-Installation wieder herstellen. Auch ein Webserver braucht keine eigene Platte/Partition, die Seiten werden in der Regel vom Entwicklungs-/Staging-Server deployed.

Kritischer sind Database-Systeme (siehe oben `/opt`): da darauf achten, dass die Daten-Files sicher sind (abgerenzt vom Root-Filesystem).

### RAID (Redundant Array of Independent Disks)

#### Hardware RAID

Mit einem Hardware RAID hat ein Betriebssystem zunächst wenig zu tun. Lediglich der Treiber für den RAID-Controller muss vorhanden sein. Aus der Sicht des Systems existiert nur eine Festplatte.

#### Software RAID

Ein Software-RAID wird vom Betriebssystem selbst verwaltet. In Linux kommen drei verschiedene Techniken zum Einsatz:

- Abstraktionsschicht - arbeitet direkt mit puren Platten (Software: mdadm)
- Logical Volume Manager (Software in der Regel LVM)
- Datei-System Schicht (zum Beispiel btrfs oder zfs)

### Partitions-Tabelle

Grundvorausetzung für die Partionierung einer Platte ist die Wahl des Formats der Partitionstabelle. Diese ist ein kleiner Abschnitt an Daten am Beginn einer Festplatte, der die Partitionen bzw. deren Positionen beschreibt. Zwei Formate sind oft anzutreffen:

### MBR (manchmal auch als dos bezeichnet)

Diese Tabelle wird noch im Masterboot-Record (also dem ersten Sektor einer Platte) abgelegt und kann genau vier Partitionen definieren. Eine der Partionen darf eine sogenannte Extended Partion sein, die wiederum eine eigene Partitionstabelle hat in ihrem ersten Sektor (EBR). In dieser Extended Partition können beliebig viele Unterpartitionen definiert werden.

### GPT (GUID Partition Table)

Hier nimmt sich die Partitionstabelle etwas mehr Platz als der im MBR. Damit können laut Spezifikation selbst auf kleinsten Platten mindestens 128 Partitionen erstellt werden. Das dürfte reichen. Die Anzahl wächst mit Plattengröße. Zudem sind einige Absicherungsmaßnahmen in die GPT eingebaut - zum Beispiel ein Backup der Tabelle am Ende der Platte. Außerdem präsentiert sich die Platte einem älteren System, dass nur MBR-Partitionierung kennt als eine schon partitionierte Festplatte mit einer Partition über die gesammte Platte.

**Und was soll nun genutzt werden?**

Grundsätzlich: **GPT**

Es ist moderner und unterstützt größere Platten.

Ausnahmen:

- Dualboot mit Windows und BIOS-Board
- Altes BIOS (vor 2010) müsste überlistet werden

### Empfehlungen

Hier folgend ein paar kleine Empfehlungen zur Aufteilung der Platten:

### Laptop - eine Festplatte

Im modernen UEFI-Laptop: GPT Partitionierung

- Die EFI System Partition (ESP), Größe 100MB
- Eine Swap-Partition für den Hibernate bzw. Suspense-To-Disk (Größe ~ RAM)
- Eine Root-Partition

Im alten BIOS Laptop: MBR Partitionierung

- Eine Swap-Partition für den Hibernate bzw. Suspense-To-Disk (Größe ~ RAM)
- Eine Root-Partition

### Server mit einer Platte(?) oder mit Hardware RAID

- ESP falls UEFI
- andernfalls nur eine Partition mit LVM
- eher kein Swap

### Reeller Server

- ESP falls UEFI
- Aufteilung nach Server-Zweck (mindestens aber Hardware-RAID oder LVM)

### Tools zur Partitionierung

Es gibt einige tools zum Partitionierung:

- `fdisk`
- `cfdisk`
- `parted`

## Dateisysteme

die wichtigsten aktuellen Linux-Dateisysteme

- ext4 Aktuell Linux Standard
- xfs: Entwickelt von SGI
- jfs: Entwickelt von IBM
- btrfs: Entwickelt von Oracle, Copy-On-Write, Subvolumens. Snapshots, Kompression

zfs und reiser4 sind out of tree, sprich nicht im Kernel

## Projekt

### LAMP server auf Debian 12 Installieren

- LVM einrichten
  - lv-root
  - lv-var
- SSH zugriff
- sudo für benutzer
- apsche2
- [php8.3]([https://](https://php.watch/articles/php-8.3-install-upgrade-on-debian-ubuntu#php83-debian-quick))

- [mysql Erweiterung für php]([https://](https://www.namehero.com/blog/how-to-fix-the-your-php-installation-appears-to-be-missing-the-mysql-extension-which-is-required-by-wordpress-error/#3-1-install-the-php-mysql-extension-via-the-linux-command-line))

- [WordPress]([https://](https://de.wordpress.org/latest-de_DE.zip))
