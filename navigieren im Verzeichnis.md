
* cd = Change Directory Verzeichnis wechsel

* pwd = print working directory Zeigt den Aktuellen Pfad

* mkdir = make directory Erstellt einen Ordner.

mkdir -p Uebung/{UV1,UV2,UV3}/{oen,two,three,four}

* -p = kein Fehler, wenn vorhanden, übergeordnetes Verzeichnis nach Bedarf erstellen, mit Dateimodi, die nicht von der Option -m beeinflusst werden

MYVAR=aha

pushd = geht ins verzeichnis und legt dieses in einen stack

dirs -v zeigt uns die letzen besuchten besuchten pfade mit index

pushd + 1 geht ins verzeichnis was auf postion 1 ist.

popd +1 nimmt das verzeichnis an position 1 aus dem stack0

-------------------------------------------------------

touch änder den modifikator wert und wenn dadei noch nicht vorhanden ist wird dierses angelegt

echo "inhalt" >"datei" legt denn inhalt in die datei

1> = standart Kanal

2> = Fehler Kanal

-------------------------------------------------------

cp datei1 datei2

cp -a datei1 datei2

cp datei1 ../three 	Datei nach folder Kopieren

cp -i fragt ob du eine datei überschriebn möchtest

cp -r recursives Kopieren von ordnern


-----------------------------------------------------

mv datei1 ../two/datei4		mv alte 


----------------------------------------------------



