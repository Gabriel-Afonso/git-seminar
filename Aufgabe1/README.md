## Aufgabe: Fehler zurückrollen mit Revert

### Ziel:

In dieser Aufgabe lernen Sie verschiedene Git-Befehle kennen, um Fehler in Ihrem Code zu beheben, indem Sie fehlerhafte Commits rückgängig machen.

### Hintergrund:

In der Softwareentwicklung kann es vorkommen, dass Fehler in den Code eingefügt werden. Git bietet verschiedene Möglichkeiten, Fehler in Ihrem Code zu beheben, indem Sie fehlerhafte Commits rückgängig machen.

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

Beim update der Library `awesome-library` auf die neue Version 1.3.0 ist ein Fehler aufgetreten. Die Version soll auf die Version 1.2.1 zurückgerollt werden.

1. Welche Möglichkeiten gibt es eine solche Änderung vorzunehmen?
2. Was haben diese unterschiedlichen Möglichekeiten für Vor- und Nachteile und wann sollte man welchen Befehl verwenden?
