# Navigation im Verzeichnis

* cd = Change Directory Verzeichnis wechsel

* pwd = print working directory Zeigt den Aktuellen Pfad

* mkdir = make directory Erstellt einen Ordner.

mkdir -p Uebung/{UV1,UV2,UV3}/{oen,two,three,four}

* -p = kein Fehler, wenn vorhanden, übergeordnetes Verzeichnis nach Bedarf erstellen, mit Dateimodi, die nicht von der Option -m beeinflusst werden

## Befehle

pushd = geht ins Verzeichnis und legt dieses in einen stack

dirs -v zeigt uns die letzten besuchten besuchten Pfade mit index

pushd + 1 geht ins Verzeichnis was auf postion 1 ist.

popd +1 nimmt das Verzeichnis an position 1 aus dem stack0

-------------------------------------------------------

touch änder den Modifikator wert und wenn die Datei noch nicht vorhanden ist wird diese angelegt

echo "Inhalt" >"datei" legt denn Inhalt in die Datei

1> = standart Kanal

2> = Fehler Kanal

-------------------------------------------------------

cp datei1 datei2

cp -a datei1 datei2

cp datei1 ../three  Datei nach folder Kopieren

cp -i fragt ob du eine datei überschreiben möchtest

cp -r rekursives Kopieren von Ordnern

`mv datei1 ../two/datei4  mv alte`
