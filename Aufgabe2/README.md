## Aufgabe: Merge-Konflikte beheben

### Ziel:

In dieser Aufgabe lernen Sie, wie Sie Merge-Konflikte in Git beheben. Merge-Konflikte entstehen, wenn zwei Branches Änderungen an denselben Dateien vorgenommen haben und Git nicht automatisch entscheiden kann, welche Änderungen übernommen werden sollen.

### Hintergrund:

In der Git-Workflow-Praxis kann es vorkommen, dass an zwei Branches unabhängig voneinander gearbeitet wird und später die Änderungen aus einem Branch in den anderen übernommen werden müssen. Beim Zusammenführen (Mergen) dieser Branches kann es zu Merge-Konflikten kommen, wenn beide Branches Änderungen an denselben Dateien vorgenommen haben.

Git kann diese Konflikte nicht automatisch lösen und erfordert daher manuelles Eingreifen des Entwicklers.

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

In diesem Repository gibt es einen Merge-Konflikt. Git nicht herausfinden, wie man den Inhalt, der auf `branch1` hinzugefügt wurde, mit dem Inhalt auf `main` zusammenführt.

Beide Änderungen sollen im "main"-Branch sein.
