# Tag 7

* Filter
* Rocky Linux Installation
* Prozessverwaltung

## Rocky Linux

### EPAL Repository

 `dnf config-manager --set-enabled crb dnf install epel-release`

## Prozessverwaltung

`ls /proc` Zeigt einem alle Laufenden Prozesse an.

`prep Prozess` zieht uns aus denn Laufenden Prozessen denn gewünschten raus.

Angaben die wir mit cat und der Prozessnummer

### status als beispiel von dem Programm cat

 `cat /proc/37778/status`

[Output_Proc_Status](./Outputs/Output_Proc_Status.md)

### Limit Zeigt die Limitierungen an

[Output_Proc_Limits](./Outputs/Output_Proc_Limits.md)

### fd zeigt die Verzeichnisse/Dateien die ein Prozess geöffnet hat

[Output_Proc_fd](./Outputs/Output_Proc_fd.md)

### meminfo

[Output_Proc_meminfo](./Outputs/Output_Proc_meminfo.md)

### cpuinfo zeigt die Informationen der CPU an

[Output_Proc_cpuinfo](./Outputs/Output_Proc_cpuinfo.md)

### top

Zeigt wie bei Windows die laufenden Prozesse

### ps Process snapshot

* -axu
  * -a = das gleiche wie -e
  * -x = hebt beschrenkung auf die für alle gruppen gilt
  * -u = wählt nach effektiver Benutzerkennung (EUID) oder Name aus. Dadurch werden die Prozesse ausgewählt, deren effektiver Benutzername oder -kennung in der Benutzerliste aufgeführt ist.
* -ely = Wählt alle Prozesse, long information,
  * -e = wählt alle Prozesse aus
  * -l = long infortation
  * -y = zeigt statt ADDR RSS
* pstree = zeigt einen Baum von prossessen

### kill

Beendet einen prozzes

* pkill -1 cat = Hanup
* pkill -15 cat = Terminate
* pkill -9  cat = Anschießen
