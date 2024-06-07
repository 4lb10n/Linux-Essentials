# Tag 20

- Wiederholung der Leistungsfeststellung
- suche
- Transiente units
- samba

## Suche

### Suche in Dateien nach Text/Muster

- grep
  - -r für Rekursiv
  - -E Extended-regex

### Suche von Dateien nach Kriterien

- find
  - Name
  - Ownership
  - Size
  - Rights
  - inode
  - Timestamps

### Temporäre Units

mit `systemd-run Programm` startet einProgramm temporär als Dienst.
Diese findet man unter `/run/systemd/transient/` und mit `sudo cp /run/systemd/transient/ "service" Ziel` Kopieren wir denn Temporären service und haben so eine Fertige Service-Unit.

### Samba

Samba ermöglicht uns, unter anderem smb shares.

mit `sudo apt install samba` installieren wir denn samba dienst.
