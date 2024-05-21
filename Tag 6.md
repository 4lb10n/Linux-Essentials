# Tag 6

kurze Wiederholung zu:

- Standardkanäle
- Pipelining
- Filter Kommandos

## Wiederholung

### Cat

cat = catenate (zusammenhängen)

Mehrere Dateien hintereinander ausgeben
`cat Datei1 Datei2 Datei3`
Sobald eine Datei als Argument angegeben wird, wird die Standardeingabe Ignoriert. Um dies Trotzdem mitnutzen zu können, machen wir an der Stelle wo wir die Standardeingabe haben möchten. Dies würde dann so Ausschauen:
`cat Datei1 - Datei2`
Dieses Minus funktioniert bei jeden anderen Filterkommando wie auch z.B. bei wc.

`cat -n Datei` = fügt vor jeder Zeile mit Inhalt eine zahl.

#### Unterschied zwischen cat Datei und cat <Datei

- `cat Datei` öffnet falls Datei nicht vorhanden ist, einen "Editor" und erlaubt es die Datei zu beschreiben. Und wenn die Datei vorhanden ist, wird diese ausgeben.

- `cat <Datei` Gibt uns denn Inhalt der Datei aus.

#### Informationen in einer anderen virtuellen Konsole ausgeben

`cat > "Inhalt" >/dev/tty2` printed denn Inhalt auf der virtuellen Konsole tty3 solange man dort auch angemeldet ist.

## Standardkanäle

- Standardeingabe Kanal = stdin Kanal Nr. 0

- Kanal für Programme die eine Eingabe erwarten wie z.B.:
  - cat
  - touch
  - passwd

- Standardkanal = Stdout, Kanal Nr. 1
  - `>` schreibt die Information in die Datei, bei erneuten ausführen wird der vorherige Inhalt gelöscht
  - `>>` hängt Information an die Datei an

- Fehlerkanal = stderr, Kanal Nr.2
leitet bei Ausführung und Auftreten eines Fehlers die Fehlermeldung in über diese Angabe in eine separate Datei.

`ls -l Datei >> ziel Datei 2>&1`
Leitet die Ausgabe in ziel Datei und die Fehlermeldung werden auch in die Ziel Datei geschrieben.

## Find

Find such nach Dateien im Dateisystem ab der Position die man angibt.
Bsp.: `finde / -name liste.txt`

dies wird aber uns Fehler ausgeben da wir, im Verzeichnisbaum nicht überall Lese rechte haben, da wir dies nicht wollen erweitern wir denn Befehl mit einer Umleitung.
`find / -name liste.txt 2>errors.txt`

jetzt wird die Fehlermeldung zwecks Berechtigung in die Datei errors.txt umgeleitet.

Dateien ins "Nirvana" Umleiten
`find / -name liste.txt 2>/dev/null`

## Filterkommando

### wc

wc = word Counter
Zählt Zeilen, Wörter und Zeichen und zeigt diese als Zahlen an.

Bsp.: `wc liste.txt
Ausgabe: 17 152 965 liste.txt`

Parameter:

- `-l` zeigt nur die Zeilen
- `-w` zeigt nur die Wörter
- `-c` zeigt nur der Charakter

### tail

zeigt mir die letzten 10 Zeilen an.

- `-5` Zeigt fünf Zeilen weniger vom ende
- `+2` Fängt ab der zweiten Zeile an zu Zähen
- `-n`  

### Head

Zeigt mir die Ersten zehn Zeilen an.

### Pipelining

Baut eine Verbindung von einem Kommando und gibt es weiter an ein weiteres

`cat liste.txt | wc` (Useless use of Cat Award)
`Ausgabe: 20     179     1125`
Bsp.:

`ls -l | tail +2 | wc -l`

- `ls -l` Auflisten des Inhaltes der Aktuellen Verzeichnisses im long linsting format.
- `tail +2` fängt ab der dritten Zeile an zu lesen.
- `wc -l` zählt nur die Zeilen.

### Sort

Sortiert denn Inhalt einer Datei oder Informationen der Standardeingabe

### Uniq

Prüft ob eine Zeile Doppel vorhanden ist und blendet die Doppelte aus.

Kombi aus sort und uniq:

`sort tn | uniq`

Kombi aus sort, uniq und wc

`sort tn | uniq | wc -l`

### Cut

Inhalt spalten weiße betrachten.

`-d " "` = ab welchem Zeichen getrennt wird
`-f " "` = Welches Feld ausgeben wird.

### tac listet denn Inhalt verkehrt rum

### tr

tr = Translate
ersetzt einzelne Zeichen

`tr a i <tn`
ersetzt alle kleinen as durch is in der Datei

Kombination aus tr und Cut

`ls -l | tr -s " " | cut -f 5 -d " "`
nimmt die Ausgabe von ls -l | presst die Leerzeichen mit tr -s für Squeeze | und schneidet mit -f 5 das fünfte Feld aus und -d entfernt das Leerzeichen.

### passte

Fasst Dateien zusammenhängen.

### dif

Vergleicht denn Inhalt Zweier Dateien.

### patch

Patch eine Datei auf Basis einer anderen Datei.

### Split

Spaltet eine Datei in mehrere Dateien zusammen.

### expand

Wandelt Tabs in Leerzeichen um.

### fmt

Erzeugt eine gewisse Formatierung

### od

od = Octal dump

### grep

sucht nach einem Muster in einer Datei.

z.B.: grep ab tn

### sed

sed = Stream Editor

Sucht und ersetzt alten String durch neuen String.

`sed s/ alten wert/neuen wert Datei`

### tee

ließt vom Standardeingabe und schreibt dies in eine Datei und gibt diese auch aus.
