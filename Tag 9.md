# Tag 9

- installation OpenSuSe Tumbleweed
  - 2 platten
    - 1 Platte mit LVM
  - Datei System ext4

## Administration

### Hostname ändern

- `vi /etc/hostname`
- `sudo hostnamectl hostname name`

### timezone ändern

- sudo -ln -sf /user/share/zoneinfo/"Continent/City /etc/localtime
- sudo timedatectl set-timezone /Kontinent/Stadt

## Wiederholung Vi

### modi

1. Kommando Modus

      - Navigation:
        - h j k l
        - b = geht zum Anfang des Wortes
        - w = geht zum ende des Wortes
        - 0 = zum Anfang der Zeile
        - ^ = zum Anfang der Datei
        - $ = springt zum ende der Zeile
        - '*'
        - G = springt ans ende vom Dateien
        - gg = Springt an denn Anfang der Datei
        - / = suche in der Datei
        - enew = öffnet eine neue Datei und schiebt die andere in denn Buffer
        - :b = buffer

      - Editing:
        - dd = Ausschneiden
        - p =Printen
        - yy = Kopieren
        - yw = kopiert das wort
        - dw = löscht das ausgewählte wort
        - r = Replace einzelne Buchstaben
        - STRG+N = autokomplementierung

       - Optionen:
         - tabs öffnet eine Datei nach Wunsch in einem Datei
  
2. Insert Modus

    - i = kommt man in denn Insert modus.
    - o = fügt eine neue Zeile unterhalb des Cursers und geht in denn Insert Modus.
    - O = fügt eine neue Zeile Oberhalb des Cursers und geht in denn Insert Modus.
    - u = macht die letzte Änderung rückgängig.
    - cw = Löscht ab dem Curser ein Wort.
    - c$ = Löscht ab dem Curser denn rest der Zeile.
    - c0 = Löscht Text vom aktuellen Cursor standort bis zum absoluten Anfang der Zeile und geht in den Insert Modus.
    - c^ = Löscht wie c0 alles bis zum Curser aber erst ab denn ersten sichtbaren. Zeichen.

3. Befehls Modus

    - q = quit
    - w = write
    - q! = quit ohne Speichern
    - reg = register
      - "Nummer im register +p printed denn vierten eintrag im Register.
4. Visual Modus

   Markiert im text und lässt dann mit yy dann Kopieren mit d löschen oder mit p Printen.
   shift+v Zeilenweise markieren.
   STRG+V Blockweise markieren

### vimrc

Hier können wir uns denn Vim Editor anpassen
[.vimrc](/Config/vimrc)

## Less

erlaubt es uns Dateien mit Viel Inhalt anzuzeigen und dort zu scrollen.

## Shell Start

### .profile

Wird Ausgeführt wenn eine Login Shell gestartet wird.
Dort können wir einstellung, Variablen und Aliase einstellen.

- `Source Script`
- oder . Script

### Export

Exportiert Variablen in alle Sub shells.
