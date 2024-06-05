# Tag 16

- Dienste
- Wiederholung von [Tag 15](Tag%2015.md)
- Socket dienst

## Dienste

Wir haben einen Dienst auf basis des Heartbeat scripts erstellt, und haben diese Reloadable gemacht.

dies machen wir mit der Zeile `EcexReload=/usr/bin/kill -HUB $MAINPID`.

Mit der Zeile `Restart=always` wird der dienst wenn der mit dem Befehl kill abgeschossen wird, sofort neugestartet.

Um denn dienst Installierbar zu machen fügen wir folgendes ein:

`[Install]
WantedBy=multi-user-target`

### Netzwerk Aktivierungsdienst

Wir schreiben einen Dienst [custom-network.service](./Units/custom-network.service) diese Datei packen wir in das Verzeichnis `/etc/systemd/system/custom-network.service`.

Nun Aktivieren wir diesen Dienst damit dieser Automatisch beim hochfahren ausgelesen wird. Dies machen wir mit dem Befehl `sudo systemctl enable custom-network.service`

## Automatisierte Netzwerk-Einrichtung

- ConnMan
- NetworkManager
- networking (Debian)
- systemd-networkd

## Socket Dienst

Wir schreiben einen Dienst der auf einen gewissen port lauscht.

Dafür schreiben wir zwei Dateien und zwar einmal
[hearbeat-ef.servic](./Units/heartbeat-ef.service)e und [heartbeat-ef.socket](./Units/heartbeat-ef.socket)

! Nach jeder Änderung am Dienst muss ein sudo systemctl daemon-reload ausgeführt werden.
