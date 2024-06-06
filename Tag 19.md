# Tag 19

- udev
- SySV Init
- Leistungskontrolle
- Installation von Arch Linux

## udev

Udev ist ein Linux-Dienst, der Gerätedateien in `/dev` dynamisch verwaltet und Kernel-Ereignisse verarbeitet. Es gehört zu `systemd` und erleichtert Hardwarekonfiguration.

## SysV Init

System V init ist ein traditionelles Linux-Startsystem, das den Start- und Stoppprozess von Diensten steuert. Es verwendet Skripte in `/etc/init.d` und Runlevel-Verzeichnisse zur Verwaltung von Systemzuständen.

bsp:    init 0 Shutdown
        init S/1 Singeluser mode ohne netzwerk
        init 2 Multiuser mode ohne netzwerk
        init 3 Multiuser mode mit netzwerk aber ohne gui
        init 4 Ungenutzt
        init 5 Multiuser mode mit gui und netzwerk (Standard)
        init 6 Reboot

## Arch Linux

### Vorbereitung für die Installation

Tastaturlayout auf deutsch ändern mit `loadkeys de-latin1`

Uhrzeit für installation einstellen
`hwclock --systohc`

Festplatte wie folgt einrichten:

- sda
  - sda1    efi  1GB
  - sda2    ext4   31G
  
#### Festplatte Formatieren

fürs root system:

- `mkfs.ext4 /dev/sda2`

für die Efi Partition:

- `mkfs.fat -F 32 /dev/sda1`

#### Partitionen Mounten

- Root
  - `mount /dev/sda2 /mnt`
- Efi
  - `mount --mkdir /dev/sda1 /mnt/boot`

### Installation

`pacman-key --init`

`pacman-key --populate`

`pacstrap -K /mnt base linux linux-firmware`

### Configuration des Systems

#### fstab

`genfstab -U /mnt >> /mnt/etc/fstab`

#### Chroot

mit `arch-chroot /mnt` wechseln wir ins Live System.

#### Zeit

`ln -sf /usr/share/zoneinfo/Region/City /etc/localtime`

#### Lokalisation

`vi /etc/locale.gen` und entfernen die raute bei unser gewünschten sprache.

nun Generieren wir mit `locale-gen` unsere locals.

jetzt tragen wir unsere Local in die passende Datei.
`vi /etc/locale.conf`
`LANG=en_US.UTF-8`

wir erzeugen mit `vim /etc/vconsole.conf` die Datei wo unser Tastaturlayout rein kommt.
Dort Tragen wir `KEYMAP=de-latin1-nodeadkeys` ein.

#### Netzwerk Konfiguration

wir erstellen die hostname Datei mit `vim /etc/hostname`.
Dort tragen wir denn Hostname des Systems ein.

#### Initramfs

wir erzeugen eine neue initramfs mit dem Befehl `mkinitcpio -P`

#### Root Passwort

mit `passwd` setzen wir das Passwort für Root.

#### Boot loader

wir installieren die Pakete:
`grub` und `efibootmgr`

als erstes installieren wir denn grub auf die platte:

`grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB`

nun erzeugen wir die grub config mit dem Befehl:

`grub-mkconfig -o /boot/grub/grub.cfg`

### Reboot

Mit ``exit`` kommen wir wieder auf die Livecd und mit dem Befehl `umount -R /mnt` hängen wir alles aus was unter /mnt eingehangen ist.

zum Schluss geben wir Reboot ein und starten in unser Arch Linux.

### Schöner machen

#### Sudo

mit dem Befehl EDITOR=VIM visudo entfernen wir bei der Zeile "Uncomment to allow members of group wheel, die Taute bei %wheel.
