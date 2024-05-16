# Tag 4

## Wiederholung

- Anmeldung
- Benutzerwechsel:  su
- Was ist ein Shell-kommando:    alias, funkionen, built-in, Executable in $PATH
- Shell-Substitutionen
  - Umleitungen >,>>, <<
  - {}
  - ~
  - "*"
  - $PATH
- Verzeichnissen: mkdir, ls, cd, rmdir
- Aufzucht von Dateien
  - Anlegen: cp, mv, touch, echo, rm
- Links: ln, unlink
- Rechte/Ownership:
  - Chown
  - Chmod

## Umask

Mit der Umask stellen wir ein welche rechte standard neuen Dateien bekommen.
Dateien bekommen nie Ausführungsrechte bei Erstellung.

bsp: `umask 023 = u=rxw, g=rx, o=r`

Gilt in der Aktuellen Shell, so lange:

- keine andere Umask gesetzt Wiederholung
- die Sitzung nicht beendet wird

Sinnvolle zahlen für die Umask:

- 0
- 2
- 7

## Sticky-, SUID-, SGID-bit

### SetGID

Sorgt dafür das beim Ausführen eines Programmes, dies mit der Gruppe die zum Programm gehört

### SetUID

Sorgt dafür das beim Ausführen eines Programmes, dies als Benutzer der zur Datei gehört.

### Sticky

## Vi

  `sudo apt install vim`

- i = Insert mode <!-- LANG=de_DE vimtutor -->
- :w = write
- :q = quit
- dd = Zeile löschen
- d2w = lösche zwei Wörter
- 2w = zum zweiten wort
- w = geht bis zum beginn des nächsten Wort OHNE dessen erstes Zeichen.
- e = geht das aktuelle Worts MIT dessen letztem Zeichen.
- $ = zum ende der Zeile MIT dem letzten Zeichen.
- u = macht die letzte eingabe rückgängig.
- STRG+R = macht das rückgängig rückgängig.
- p = print die Zeile die mit dd gelöscht wurde under dem Cursor.
- :reg =öffnet ein Automatisches Register.
- Umschalt+p = fügt die gelöschte Zeile über denn Cursor.
- rx = ersetzt das Zeichen wo man sich aktuell befindet mit x oder was man möchte.
- ce = Ändert Wörter ab der Position wo sich der Cursor befindet.
- Umschalt+g = um ende der Datei.
- '' = geht zurück zur letzten Zeile.
- gg = geht zum Anfang der Datei.
- Zeilennummer + Umschalt+g = geht zu einer bestimmten Zeile.
- Umschalt + * sucht nach dem wort wo sich der Cursor aktuell befindet.
- :n springt zur nächsten Datei wenn man mehrere geöffnet
- :p springt wieder zurück.
- vi -o : öffnet alle Dateien untereinander
- vi -O : öffnet alle Dateien nebeneinander
- vi -p : öffnet die Dateien in Tabs
- vsp: vertikalen split

`vim -r` für recover um eine abgestürzte Datei wieder herzustellen.

`LANG=de_DE vimtutor`

## Distribution

Eine zusammenstellung von Paketen
Distributoren Compilieren ein System und verteilen dies.

- Slackware
- Debian
- SuSE
- Red Hat
