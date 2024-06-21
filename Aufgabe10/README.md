## Aufgabe: stash

### Ziel:

In dieser Aufgabe lernen Sie den Git-Befehl git stash kennen und erkunden dessen praktische Anwendungsmöglichkeiten. Sie werden erfahren, wie Sie mit git stash Änderungen temporär zwischenspeichern, den Arbeitsstand bereinigen und später die gespeicherten Änderungen wiederherstellen können.

### Hintergrund:

In der Softwareentwicklung kommt es häufig vor, dass Sie an einer Aufgabe arbeiten und diese zwischendurch unterbrechen müssen, um an etwas anderem zu arbeiten. Mit git stash können Sie Ihre aktuellen Änderungen in einem temporären Stash speichern, Ihren Arbeitsstand auf den letzten Commit zurücksetzen und später die Änderungen aus dem Stash wiederherstellen, wenn Sie die Arbeit an der ursprünglichen Aufgabe fortsetzen möchten.

### Setup:

Aufgabe mit dem `setup.sh`-Skript einrichten:

```bash
chmod +x setup.sh
./setup.sh
```

Aufgabe im Unterordner "exercise" bearbeiten:

```bash
cd exercise
```

Sollte ein Fehler auftreten - einfach das Setup-Skript erneut ausführen:

```bash
./setup.sh
```

### Aufgabe

1. Stash erstellen: Angenommen, Sie haben an der Datei main.py gearbeitet und einige Änderungen vorgenommen. Sie möchten diese Änderungen zwischenspeichern, bevor Sie an einer anderen Aufgabe weiterarbeiten. Erstellen Sie mit git stash einen Stash mit einer aussagekräftigen Beschreibung.

2. Arbeitsstand bereinigen: Nachdem Sie den Stash erstellt haben, möchten Sie Ihren Arbeitsstand bereinigen. Setzen Sie den HEAD-Zeiger mit git reset --hard HEAD~1 auf den letzten Commit zurück und überprüfen Sie den Zustand Ihres Arbeitsverzeichnisses mit git status.

3. Stash-Liste anzeigen: Zeigen Sie mit git stash list alle Ihre gespeicherten Stashes an. Notieren Sie sich die Nummer des Stashes, den Sie im ersten Schritt erstellt haben.

4. Stash wiederherstellen: Stellen Sie mit git stash apply <stash-nummer> die Änderungen aus dem ausgewählten Stash wieder her. Überprüfen Sie den Inhalt Ihrer Arbeitsverzeichnis, um sicherzustellen, dass die Änderungen korrekt wiederhergestellt wurden.

5. Stash löschen: Nachdem Sie den Stash nicht mehr benötigen, können Sie ihn mit git stash drop <stash-nummer> löschen.

### Hilfreiche Ressourcen:

https://git-scm.com/docs/git-stash
https://www.atlassian.com/git/tutorials/saving-changes/git-stash
