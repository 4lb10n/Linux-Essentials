# Tag 8

Erstes Bash Script was einen Heartbeat signal sendet.

[heartbeat.sh](/Scripte/heartbeat.sh)

## Hintergrundprozesse

Prozesse im Hintergrund starten mit dem &
kann nur per Prozess ID gestoppt wird
`kill ProzessID`
`pkill Name des hintergrundprozesses`

- jobs = listet jobs auf
- fg = jobs in denn vordergrund holen
- bg = Jobs in denn Hintergrund holen
- disown = Entfernt Jobs aus der Aktuellen Shell
- nohup = starter einen Prozess im Vordergrund gibt aber seine Ausgabe, in die Datei nohup.out
  und sorgt dafür, dass das Programm nach dem beenden der shell die PiD 1 bekommt.
- setsid = starte ein Programm ohne eine shell zu starten.
  - -w = setsid wartet bis das Programm beendet ist und wird zum Daemon.

## Jobs

Listet alle laufenden hintergrund Jobs auf.
`jobs`

Strg - z = stop einen Vordergrundprozess und schiebt ihn in denn Hintergrund.
