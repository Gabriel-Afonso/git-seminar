- **Stash erstellen**:
  - `git stash push -m "Zwischenspeicherung der Änderungen in main.py"` → Änderungen in einem Stash mit Beschreibung speichern.
- **Arbeitsstand bereinigen**:

  - `git reset --hard HEAD~1` → Arbeitsstand auf den letzten Commit zurücksetzen.
  - `git status` → Überprüfen, ob das Arbeitsverzeichnis bereinigt ist.

- **Stash-Liste anzeigen**:

  - `git stash list` → Liste aller gespeicherten Stashes anzeigen, Stash-Nummer notieren.

- **Stash wiederherstellen**:

  - `git stash apply stash@{0}` → Änderungen aus dem angegebenen Stash wiederherstellen.
  - `git status` → Überprüfen, ob die Änderungen korrekt wiederhergestellt wurden.

- **Stash löschen**:
  - `git stash drop stash@{0}` → Den verwendeten Stash löschen.
