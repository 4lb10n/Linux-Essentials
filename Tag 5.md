# Tag 5

## Aufgabe Fedora installieren

- 2 Platten
    1. efi, swap, root
    2. home
- Oberfläche
- ssh server installieren
- hostname ändern
- Benutzer anlegen

## Befehle

ss -tln

- t = nur tcp
- l = zeigt nur lauschende ports
- n = nummerisch ohne namensauflösung
- hostname ändern:
  - alt = `vi /etc/hostname`
  - neu = `hostnamectl set-hostname "hostname"`
- useradd -m -s /bin/zsh/ -c "Luigi" Luigi
  - m = erzeugt das heimatverzeichnis
  - s = legt die shell fest
  - c = legt denn Anzeigenamen fest
  - /etc/skel/ In diesem Verzeichnis, befinden sich alle Ordner die Jeder Benutzer bei der Anlegung bekommt.
  - apropos = begriff suche einen begriff im handbuch.
  - man Nummer begriff = öffnet eine bestimmte page.
  
## Benutzer anders anlegen

- Gruppe anlegen
  
  - `vim /etc/group`
    - Umschalt G zum ende der Datei
    - Letzten eintrag mit yy kopieren und mit p Printen
    - In den Insert modus und denn Namen ändern und die Nummer um eins erhöhen.
    - ESC zum verlassen und :wq zum Speichern.

- Benutzer Anlegen
  - `vim /etc/passwd`
    - Umschalt G zum ende der Datei
    - Letzten eintrag mit yy kopieren und mit p Printen
    - In den Insert modus und denn Namen ändern und die Nummer um eins erhöhen.
    - die standard Shell bei bedarf anpassen.
    - ESC zum verlassen und :wq zum Speichern.
- Password setzen
  - `passwd Benutzername`
  - -e für expire sorgt dafür, dass das Password sofort abläuft.
  
- heimatverzeichnis für Benutzer anlegen
  - `cp -ar /etc/skel/ /home/Benutzer`

- Ownership anpassen
  - `chown -R Benutzer:Benutzer /home/Benutzername`

- Rechte anpassen
  - `chmod 700 /home/Benutzername`
  