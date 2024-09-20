## Aufgabe: Auf einen alten Commit springen mit Reset

### Ziel:

Ziel dieser Aufgabe ist es den Git-Befehl `reset` kennen und anwenden zu lernen.

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

- Das vorgegebene Repository hat einen Fehler in der aktuellen Version. Der Test `test.sh` scheint nicht richtig durchzulaufen. Beheben Sie den Fehler ohne einen neuen Commit zu erstellen.
- Was ist der unterschied zwischen `git reset --soft <commit-id>` und `git reset --hard <commit-id>`? Wann sollte man welchen Befehl verwenden?
- Wann sollte `git reset` NICHT verwendet werden? Warum?

### Hilfreiche Ressourcen:

- [https://git-scm.com/docs/git-reset](https://git-scm.com/docs/git-reset)
- [https://www.atlassian.com/git/tutorials/undoing-changes/git-reset](https://www.atlassian.com/git/tutorials/undoing-changes/git-reset)
- [https://stackoverflow.com/questions/2530060/in-plain-english-what-does-git-reset-do](https://stackoverflow.com/questions/2530060/in-plain-english-what-does-git-reset-do)
