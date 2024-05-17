# Links

## ln (Hardlink)

 quelldatei Ziel Datei
`ln ../UV2/datei .`
wenn man eine Datei die mit ln verlinkt wurde gelöscht wird die neue Datei nicht gelöscht.

## unlink

löscht wie rm Dateien aber nur eine Einzige.

## Symbolische Links und  Unterschied von MV und CP von links

- ln -s (Symbolischer link)
- mv:  verschiebt die Datei erzeugt aber einen Fehlerhaften link
- cp:  Kopiert die Ursprungsdatei

## Sudo

Sudo rechte für Benutzer anlegen.

als Root: EDITOR=vi visudo
/root
mit n bis zur Zeile User privilege specification
vor der Zeile root zweimal y drücken um die Zeile zu kopieren
Dann einmal p zum darunter Printen
in der neuen Zeile cw eingeben für change word und jetzt unseren benutzernamen eingeben.

ESC um in denn normalen modus wieder zurück und geben :wq zum speichern.

## Rechte

### chmod

Parameter für chmod

- d: directory
- r: Read
- w: Write
- x: Executable
- -: Datei

- --

- u: User
- g: Group
- o: other

#### ausführen von Dateien

`chmod +x dateinamen` zum Ausführbarkeit von Dateien
`chmod -x dateinamen` zum entfernen der Ausführbarkeit

### rechte für other

    ### Schreibrechte für other

    `sudo chmod o+w .`

    - sudo als su ausführen
    - chmod: change modifier
    - "o"   für other
    - "+" fürs hinzufügen eines modifier
    - "w" für schreib(write) rechte

### chown

`chown user:group Datei`

- chown zum ändern der ownership
- user ändert die Besitzer
- :group die Gruppe
- Datei/Verzeichnis das Verzeichnis oder Datei die verändert werden soll.

## Skript

`echo "echo gotcha" > Skript`

Möglichkeiten ein Skript auszuführen

1. bash Skript
2. chmod +x Skript
3. source Skript
4. . Skript

`#!/bin/bash` shebang damit die Shell weiß in welcher Sprache das Skript geschrieben wurde.

um ein Skript einfach starten zu können muss es in einem Verzeichnis der $PATH Variabel ist.

sudo cp Skript /usr/local/bin/ hier benötigen wir aber root rechte.
wir erstellen uns mit dem befehlt mkdir /home/username/bin.

wir müssen uns einmal neu anmelden und wenn wir $PATH eingeben sehen wir als erstes unser eben erstellten bin order.
