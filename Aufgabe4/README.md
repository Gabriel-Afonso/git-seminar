## Aufgabe: Fehler finden mit Bisect

### Ziel:

In dieser Aufgabe lernen Sie, wie Sie den Git-Befehl git bisect verwenden, um Fehler in Ihrem Code zu finden.

### Hintergrund:

Fehlerbehebung kann eine mühsame Aufgabe sein, besonders wenn es sich um komplexe Codebasen handelt. Git Bisect ist ein praktisches Tool, das Ihnen dabei helfen kann, Fehler schneller und effizienter zu finden.

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

### Aufgabe:

Der Main-Branch hat einen Bug. Dies kann dadurch geprüft werden, dass die Tests fehlschlagen.
Zum Ausführen der Tests kann das Testskript mit folgendem Befehl gestartet werden:

```bash
./test.sh
```

**Ziel ist es mit `git bisect` den Commit zu finden, der den Build zum Scheitern gebracht hat.**

Glücklicherweise wurde zu Beginn des Projekts einen Tag namens `initial-commit` hinzugefügt, den wir verwenden können, um die Suche nach dem Fehler zu starten.

### Zusatz:

- Warum können wir uns sicher sein, dass tatsächlich ein Bug eingeführt wurde?
- Experimentieren Sie mit verschiedenen Optionen von git bisect, z. B. git bisect skip und git bisect log.
- Informieren Sie sich über die Vorgehensweise bei der Fehlerbehebung mit git bisect in komplexeren Situationen, z. B. wenn der Fehler mehrere Commits umfasst.
- Nutzen Sie git bisect reset, um den Bisect-Modus zu beenden und den Code-Verlauf auf den Zustand vor dem Start von git bisect zurückzusetzen.

### Hilfreiche Ressourcen:

https://git-scm.com/docs/git-bisect
