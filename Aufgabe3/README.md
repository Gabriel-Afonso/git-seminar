## Aufgabe: Grundlegendes Cherry-Picking

### Ziel:

In dieser Aufgabe lernen Sie, wie gezielt einzelne Änderungen von einem Branches in anderen Branch kopieren.

### Hintergrund:

Git bietet hierfür die Funktionalität `cherry-pick`, mit der sich bestimmte Änderungen gezielt aus einem Branch in einen anderen übertragen lassen. Sie können Git mitteilen, welche Commits Sie übernehmen möchten, und Git fügt diese dann der Commit-Historie Ihres Branches hinzu.

Git kann dabei sowohl einzelne Commits als auch einen Bereich von Commits aus einem Branch übernehmen.

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

In dieser Aufgabe arbeiten wir mit zwei Branches, `master` und `feature`. An beiden Branches wurde unabhängig voneinander gearbeitet. Es gibt jedoch einige Änderungen im `feature`-Branch, die wir übernehmen und in den `master`-Branch integrieren möchten, ohne dabei den gesamten Changeset des `feature`-Branches zu übernehmen.

Unser Übungsrepository weist aktuell folgenden Git-Verlauf auf:

```
A - B - C - D     master
     \
      E - F - G - H feature
```

Wie Sie sehen, haben sich der `feature`-Branch und der `master`-Branch mit jeweils eigenen Commits weiterentwickelt. Wir möchten die Commits F und G aus dem `feature`-Branch übernehmen und in den `master`-Branch integrieren, sodass der Git-Verlauf folgendermaßen aussieht:

```
A - B - C - D - F - G master
     \
      E - F - G - H feature
```

1. Verwenden Sie `git log --oneline --graph --all`, um sich den Verlauf anzusehen.
2. Verwenden Sie `cat`, um den Inhalt der Datei `names.txt` anzuzeigen. Diese Datei wird in Commit F geändert.
3. Verwenden Sie `cat`, um den Inhalt der Datei `sentence.txt` anzuzeigen. Diese Datei wird in Commit G geändert.
4. Verwenden Sie `git cherry-pick <Commit-Hash_F>`, um nur den Commit F auf Ihren Branch zu übernehmen (cherry-pick).
5. Verwenden Sie `git log --oneline`, um die Änderung am Verlauf zu überprüfen. Commit F sollte nun der neueste Commit im `master`-Branch sein.
6. Verwenden Sie `cat`, um den Inhalt von `names.txt` anzuzeigen. Sehen Sie, wie sich die Datei geändert hat!
7. Verwenden Sie `git reset --hard HEAD^`, um das Cherry-Picking aus dem Verlauf zu löschen, sodass wir erneut versuchen können, einen Bereich von Commits zu übernehmen.
8. Verwenden Sie `git log --oneline --graph`, um zu überprüfen, ob der per Cherry-Picking übernommene Commit jetzt aus dem Branch entfernt wurde.
9. Im Grunde genommen befinden wir uns jetzt wieder am Ausgangspunkt. Verwenden Sie nun `git cherry-pick <Commit-Hash_F>^..<Commit-Hash_G>`, um den Bereich von Commits von F bis G (die beiden Commits) per Cherry-Picking zu übernehmen. Achten Sie genau darauf und vergessen Sie nicht das Caret-Symbol `^` nach dem ersten Commit-Hash (siehe der Abschnitt _Wichtiger Hinweis_ unten, um zu verstehen, warum dies erforderlich ist).
10. Verwenden Sie `git log --oneline --graph`, um den Verlauf anzuzeigen.
11. Verwenden Sie `cat`, um den Inhalt der Dateien `names.txt` und `sentence.txt` anzuzeigen. Sehen Sie, wie sich die Dateien geändert haben!
12. Wie viele Commits wurden durch das Cherry-Picking hinzugefügt?

## Wichtiger Hinweis

Bei der Verwendung eines Commit-Bereichs mit dem `cherry-pick`-Befehl wird der zuerst angegebene Commit-Hash für den ältesten Commit (linke Seite des Bereichs) nicht tatsächlich in das Cherry-Picking aufgenommen. Dieser Commit wird also ausgeschlossen, während alle anderen Commits zwischen und einschließlich des neuesten Commits übernommen werden.

Um dieses Problem zu umgehen, ist es daher sinnvoll, das Caret-Symbol `^` nach dem ersten Commit-Hash zu verwenden. Damit teilen Sie Git mit, dass Sie den Commit VOR diesem Commit übernehmen möchten und schließen ihn somit in den Cherry-Picking-Prozess ein.

Beispielsweise würde

```bash
git cherry-pick ABCD..EFGH
```

den Commit ABCD nicht übernehmen. Stattdessen sollten Sie ein Caret-Symbol an das Ende von ABCD anhängen, um Git anzuweisen, diesen Commit mit aufzunehmen:

```bash
git cherry-pick ABCD^..EFGH
```

### Hilfreiche Ressourcen:

- [https://www.tollmanz.com/git-cherry-pick-range/](https://www.tollmanz.com/git-cherry-pick-range/)
- [https://git-scm.com/docs/git-cherry-pick](https://git-scm.com/docs/git-cherry-pick)
