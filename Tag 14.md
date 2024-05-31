# Tag 14

- Lokalisierung

## Sprache

Bei Debian findet sich die Datei zum Ändern der Sprachen unter /etc/locale.gen
Dort die Gewünschten Sprachen einkommentieren und speichern.

Danach müssen wir sudo locale.gen um Locales zu generieren.

Um die Systemsprache zu ändern, muss der wert `LANG=` in der `/etc/default/locale` geändert werden.

Für Redhead Basierte Systeme müssen vorher Language packs installiert werden.
diese macht man mit `dnf install glibc-all-langpacks`.

### Systemd

mit dem Befehl localectl können wir viel einstellen.

mit dem Befehl localectl --help bekommen wir folgendes:

[Output_localectl_help](./Outputs/Output_localectl_help.md)

## Zeit

Das Kommando `date` zeigt uns die aktuelle zeit und Datum an.
Mit Sudo rechten können wir hier auch einstellungen vornehmen.

Mit `hwclock` zeigt wir uns die hardwareuhrzeit an, und könnte man z.B denn Timedrift anpassen.



## etckeeper

Ist eine alternative zu git zum verwalten von Änderungen im `/etc`