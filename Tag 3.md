# Links

## ln (Hardlink)

 quelldatei Ziel datei
`ln ../UV2/datei .`
wenn man eine datei die mit ln verlinkt wurde gelöscht wird die neue datei nicht gelöscht.

## unlink

löscht wie rm Dateien aber nur eine Einzige.

## Symbolische Links und  Unterschied von MV und CP von links

- ln -s (Symbolischer link)
- mv:  verschiebt die Datei erzeugt aber einen Fehlerhaften link
- cp:  Kopiert die Ursprungsdatei

## Sudo

Su rechte für benutzer anlegen.

als Root: EDITOR=vi visudo
/root
mit n bis zur zeile User privilege specification
vor der zeile root zweimal y drücken um die zeile zu kopieren
Dann einmal p zum darunter printen
in der neuen zeile cw eingeben für change word und jetzt unseren benutzernamen eingeben.

ESC um in denn normalen modus wieder zurück und geben :wq zum speichern.

## Rechte

### chmod

Parameter für chmod

- d: directory
- r: Read
- w: Write
- x: Executable
- -: datei

- --

- u: User
- g: Group
- o: other


|---U---|---G---|---O---|

#### ausführen von dateien

`chmod +x dateinamen` zum ausführbarkeit von dateien
`chmod -x dateinamen` zum entfernen der ausführbarkeit

### rechte für other

    ### Schreibtrechte für other

    `sudo chmod o+w .`

    - sudo als su ausführen
    - chmod: changemodifier
    - "o"   für other
    - "+" fürs hinzufügen eines modifier
    - "w" für schreib(write) rechte

### chown

`chown user:group datei`

- chown zum ändern der ownership
- user ändert die besitzer
- :group die gruppe
- datei/verzeichnis das verzeichnes oder datei die verändert werden soll.

## Skript

`echo "echo gotcha" > sktipt`

möglichkeiten ein skript auszuführen

1. bash skript
2. chmod +x skript
3. source skript
4. . skrip

`#!/bin/bash` shebeng damit die Shell weiß in welcher sprache das skript geschrieben wurde.

um ein skript einfach starten zu können muss es in einem Verzeichnis der $PATH Variabel ist.

sudo cp skript /usr/local/bin/ hier benötigen wir aberm root rechte.
wir erstellen uns mit dem befehlt mkdir /home/username/bin.

wir müssen uns einmal neu anmelden und wenn wir $PATH eingeben sehen wir als erstes unser eben erstelltern bin order.
