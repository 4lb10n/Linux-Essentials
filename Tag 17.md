# Tag 17

- Lösung eines problems mit dem service [heartbeat-ef.service](./Units/heartbeat-ef.service)
- kurze shell substitution und Argumente
- Zeit gesteuerte Vorgänge

## Problemlösung

Hir haben folgende Dateien angepasst:

- [heartbeat-ef.service](./Units/heartbeat-ef.service)
  - Wir haben die ExecStart angepasst auf basis der Veränderung am heartbeat Programm

- [heartbeat-ef.socket](./Units/heartbeat-ef.socket)
  - Wir haben die Zeile Accept=true hinzugefügt

- [heartbeat](./Scripte/heartbeat)
  - Wir haben dem curl eine Variable verpasst die wird im .service mit übergeben.

## Zeit gesteuerte Vorgänge

mit dem Befehl at können wir Zeitgesteuert Ausführen.

bsp: at 10:30

at> heartbeat

at> < EOT >

führt das Programm heartbeat um 10.30 aus.

### cron

Verarbeitet cron.Tabellen
jeder user kann eine festlegen.
Globale Tabelle /etc/crontab

Aufbau eines Cron Befehl:

Minuten Stunden tag(Monat)  Monat   Wochentag   Kommando

## Logging

Wer erzeugt Log Meldungen?

- Kernel
  - `sudo dmesg`
- Journal
  - `journalctl`
- Syslog
  - für Debian muss das packet `syslog-ng` installiert werden.
- rsyslog
  - ist ein daemon.

### Logger

Lässt uns ein eigenes log schreiben

### arten von log files

- Auth.log
- boot.log
- user.log
- messages
