# Git Seminar

**Willkommen im Seminar-Repository!**

Dieses Repository enthält verschiedene Aufgaben für das Git-Seminar. Jede Aufgabe ist in einem eigenen Ordner abgelegt und kann mit dem `setup.sh`-Skript eingerichtet werden.

**So funktioniert's:**

1. **Repository klonen:**
   ```bash
   git clone <URL des Repositorys>
   ```
2. **Nutzer konfigurieren:**

   ```bash
   git config --global user.name "Max Musterman"
   git config --global user.email "max@example.de"
   ```

3. **.git Ordner löschen**

- bevor Sie mit den Aufgaben beginnen, müssen Sie erst einmal den `.git`-Ordner aus dem Repository. Jede Aufgabe verwendet ein Git-Repository. Diese Substruktur kann zu problemen führen, daher muss im Vorhinein das .git Verzeichniss gelöscht werden.

3. **In den Ordner der gewünschten Aufgabe wechseln:**
   ```bash
   cd <Aufgabenordnername>
   ```
4. **Aufgabe mit dem `setup.sh`-Skript einrichten:**
   ```bash
   ./setup.sh
   ```
5. **Aufgabe im Unterordner "exercise" bearbeiten:**
   ```bash
   cd exercise
   ```
6. **Sollte ein Fehler auftreten - einfach das Setup-Skript erneut ausführen:**
   ```bash
   ./setup.sh
   ```
   Dies setzt die Übung auf den Anfangszustand zurück.

**Hinweise:**

- Jeder Aufgabenordner enthält eine README-Datei mit detaillierten Anweisungen zur Aufgabe.
- Um keine Konflikte mit verschachtelten Git-Ordnern zu haben, sollte nach dem Klonen dieses Repositories der `.git`-Ordner gelöscht werden.
- Bei Fragen oder Problemen wenden Sie sich bitte an den Seminarleiter.

**Viel Spaß beim Üben!**

---

**Zusätzliche Informationen:**

- Dieses Repository ist unter der MIT-Lizenz lizenziert.

- Die in diesem Repository verwendete Aufgabenstuktur wurde inspiriert durch: https://github.com/eficode-academy/git-katas/tree/master
