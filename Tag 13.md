# Tag 13

-RAID anlegen

## RAID

- 2 Platten
  - Größe 20GB
- Label Typ: gpt
- Partitions type: Linux RAID

`cfdisk /dev/sd*` = * für Laufwerksbuchstaben

apt install mdadm zum installieren

`mdadm --create --verbose --level=1 --metadata=1.2 --raid-devices=2 /dev/md/Snickers /dev/sdb1 /dev/sdc1`

`mdadm --detail --scan >> /etc/mdadm/mdadm.conf`

`update-initramfs -u`

## Partitions des RAID Laufwerks

`cfdisk /dev/md/name`

### LVM

#### Physical Volume erzeugen

`pvcreate /dev/md/Name1`

#### Physical Volume zur Volume Gruppe hinzufügen

`vgextend vg-root /dev/md/Name der Partition`

#### Logisches Volume erzeugen

`lvcreate -L Größe des Volumes Name der VolumGrupe -n name des Logischen Volums`

#### LV Formatieren

`mkfs.ext4 /dev/vg-root/www`

## Mounten

Um eine Platte des LVMs einzubinden müssen wir zwei Befehle ausführen

`ls -l /dev/mapper/`

`mount /dev/sdXY /path/to/mount/point`

Mound point für Temporäre Filesysteme

`/mnt`

### Inhalt vom webserver auf eine andere platte Kopieren

platte nach /mnt mounten

`cp -a /var/www/* /mnt`

### Laufwerk fest mounten

vi /etc/fstab

File system      mount point    type

Pfad der platte -> ziel -> dateisystem -> defaults -> 0 -> 0

### LV Erweitern

`lvresize -L +Größe /dev/Volumengruppe/logical volume`
