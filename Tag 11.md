# Tag 11

- Filesystem Hierarchy Standard

## FHS

Grundlegende Idee war, dass Dateien im Linux-Dateisystem kategorisierbar sind in Hinblick auf:

- Statisch und Nicht-Statisch (Statisch bedeutet im laufenden System unveränderlich)

- Shareable und Unshareable (Spezifische für einen Rechner oder teilbar zwischen Rechnern)

## Root-Filesystem - die oberste Ebene

Allgemein anerkannt ohne große Abweichung

- `/boot`: Dateien die für denn Systemstart benötigt werden.
- `/dev`: Gerätedaten
- `/etc`: Konfiguration des Systems
- `/home`: Heimatverzeichnisse der Benutzer
- `/mnt`: Manueller Einhängepunkt des Administrators
- `/opt`: Optionale Software (oft von Drittanbietern)
- `/root`: Heimatverzeichnis des Superusers
- `/run:`: Dateien laufender Prozesse
- `/srv`: Dateien von Diensten (Webserver, FTP-Server)
- `/tmp`: Temporäre, flüchtige Daten

## Mount

Festplatten werden mit dem `Mount` Befehl eingehängen
Der Manuelle einhängepunkt ist `/mnt`

## Benutzerverwaltung

Lokale Linux-User werden über einfache Dateien und Kommandos verwaltet.

### Relevant Daten

- `/etc/passwd`: Liste der lokalen Benutzer im System
- `/etc/shadow`: Passwörter der lokalen Benutzer
- `/etc/groups`: Liste der lokalen Gruppen
- `/etc/gshadow`: Gruppenpasswörter (heutzutage ungenutzt)
- `/etc/default/useradd`: Default-Einstellungen für neue Nutzer
- `/etc/skel`: Verzeichnis mit Default-Dateien für neue Benutzer

Standardwerte ändern

```sh
usermod -D -s = für Standard Shell 
```

Ein hilfsmittel ist `getent`

### Sudo-user

Oft ist der `sudo` -Konfiguration (Hinweis: `visudo`) schon eine bestimmte Gruppe
als Sudoer-Gruppe freigeschalten. Bei Debian-Systemen ist das in der Regel die Gruppe `sudo`, in anderen Distros oft `wheel`.

Um einem Benutzer eine zusätzliche Gruppe zu geben, genügt folgendes Kommando:

```sh
# -a : add - ohne das -a ist die folgende Gruppenliste die effektive Liste alle Gruppen
# -G : komma-getrennte Liste der zusätzlichen Gruppen
usermod -aG Gruppe Benutzer
```

## Paketverwaltung

die Gängisten Paketformate sind `.dep`-Package und `.rpm`-Package

### Repositorys

Sind offizielle Paketquellen, von denen der Benutzer seine Pakete beziehen kann.

## Tooling

### SUSE-Welt

Für den Administrator bietet sich hier der Einsatz von YaST an, das allerdings auch nur eine Steuerung des zugrunde liegenden Pakettools ist (aktuell: `zypper`).

Relevante Dateien und Ordner: `/etc/zypp/zypp[er].conf bzw. /etc/zypp/repos.d`

### RedHat/Fedora-Welt

Aktuell heißt das Pakettool `dnf`. Die Generation davor hieß `yum`. Der Übergang wurde aber sehr fließend gestaltet, so dass die yum-Befehle immer noch funktionieren.

Relevante Dateien und Ordner: `/etc/yum.conf` bzw. `/etc/yum.repos.d`

### Debian-Welt

In Debian waren die Pakettools ursprünglich eine ganze Sammlung von Tools (`apt-get`, `apt-search`, `apt-upgrade`, ...). Diese existieren weiterhin. Für die meißten Anwendungsfälle reicht aber das vereinfachte modernere Frontend `apt`.

Relevante Datein und Ordner: `/etc/apt/sources.list` bzw. `/etc/apt/sources.list.d`

### Rest der Welt

Zum Beispiel `pacman` aus der ArchLinux-Welt
