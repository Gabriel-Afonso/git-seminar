## Aufgabe: Sensitive Daten aus einem Git-Repository löschen

### Ziel:

In dieser Aufgabe lernen Sie, wie Sie sensible Daten aus einem Git-Repository sicher entfernen können.

### Hintergrund:

Es ist wichtig, sensible Daten wie Passwörter, API-Keys und andere vertrauliche Informationen nicht in einem Git-Repository zu speichern. Diese Daten könnten bei einem Leak des Repositorys in falsche Hände geraten und zu erheblichen Schäden führen.

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

- Entfernen Sie die Datei `password.txt` aus dem Arbeitsverzeichnis und dem Staging-Bereich.
- Verwenden Sie den Befehl `git filter-branch` oder `bgf` (BFG Repo-Cleaner), um die Commits zu entfernen, die die sensiblen Daten enthalten.
- Stellen Sie sicher, dass die sensiblen Daten nicht mehr im Repository-Verlauf oder in lokalen Kopien vorhanden sind.

### Zusatz:

- Wann ist es notwendig tools wie `git filter-branch` und `bgf` zu verwenden?
- Was haben diese Methoden für Komplikationen (insbesondere im Hinblick auf die Teamarbeit)?
- Erklären Sie die Vor- und Nachteile der verschiedenen Methoden zum Entfernen von sensiblen Daten aus einem Git-Repository.
- Diskutieren Sie Best Practices für die Speicherung und den Umgang mit sensiblen Daten.

### Hilfreiche Ressourcen:

- [https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)
- [https://confluence.atlassian.com/bitbucketserverkb/how-do-i-remove-sensitive-unwanted-content-that-was-pushed-to-my-bitbucket-server-instance-1019389998.html](https://confluence.atlassian.com/bitbucketserverkb/how-do-i-remove-sensitive-unwanted-content-that-was-pushed-to-my-bitbucket-server-instance-1019389998.html)
- [https://rtyley.github.io/bfg-repo-cleaner](https://rtyley.github.io/bfg-repo-cleaner)
