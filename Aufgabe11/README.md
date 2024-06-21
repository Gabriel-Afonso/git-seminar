## Aufgabe: reflog

### Ziel:

In dieser Aufgabe lernen Sie den Git-Befehl git reflog kennen und erkunden dessen vielfältige Einsatzmöglichkeiten. Sie werden erfahren, wie Sie mit git reflog Ihre Git-Vergangenheit durchsuchen, versehentlich gelöschte Commits wiederherstellen und verlorene Referenzen aufspüren können.

### Hintergrund:

Der git reflog protokolliert alle Änderungen, die an den Referenzen Ihres lokalen Git-Repositorys vorgenommen wurden, einschließlich HEAD, Branches und Tags. Dies kann sich als äußerst nützlich erweisen, wenn Sie versehentlich einen Commit gelöscht, einen Branch umbenannt oder eine Referenz auf einen falschen Zustand gesetzt haben.

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

### Aufgabe 1:

In dieser Aufgabe arbeiten wir mit zwei Branches, `main` und `feature`. An beiden Branches wurde unabhängig voneinander gearbeitet.

Unser Übungsrepository weist aktuell folgenden Git-Verlauf auf:

```
A - B - C - D main
     \
      E - F - G - H feature
```

Scheinbar sind einige Commits verloren gegangen. Ziel ist es aus der oben beschriebenen Struktur die unten Angegebene wieder herzustellen.

```
A - B - C - D - F - G main
     \
      E - F - G - H - I feature
```

### Aufgabe 2:

Wie es scheint gab es noch einen dritten Branch namens "fixup". Dieser soll wiederhergestellt werden.
