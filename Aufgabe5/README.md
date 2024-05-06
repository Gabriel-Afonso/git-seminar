## Aufgabe: Geschichte neu schreiben mit Git Rebase

### Ziel:

In dieser Aufgabe lernen Sie, wie Sie den Git-Befehl `git rebase` verwenden, um die Commit-Historie Ihres Repositorys neu zu schreiben.

### Hintergrund:

Die lineare Historie von Git ist in vielen Fällen sehr nützlich, kann aber in einigen Situationen unübersichtlich werden. Mit git rebase können Sie die Commit-Historie Ihres Repositorys neu schreiben, indem Sie Commits neu anordnen, zusammenführen oder löschen.

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

- Ordnen Sie den Verlauf so um, dass er tatsächlich Sinn macht - fügen Sie die Dateien in der Reihenfolge ein, die ihrem Namen entspricht.
- Was müsste vorgenommen werden, wenn der Commit "file 6" in "file6" umbenannt werden sollte um dem Standard der anderen Commits zu folgen?
- Die Commits "file1" - "file5" stellen eine logische Einheit dar und sollen zusammengeführt werden. Wie kann das erreicht werden?

## Wichtiger Hinweis

- Benutzen Sie `git log --oneline --graph` um die Commits zu sehen
- Verwenden Sie `git rebase -i <nach-diesem-commit>`, um die Commits neu zu ordnen. In der Datei, die Sie bearbeiten, gibt es Kommentare, die die verfügbaren Befehle erklären.
