1. Welche Datei ist problematisch? --> password.txt
2. Mit `git log password.txt` commits anzeigen, welche die Datei enthalten.
3. Alle Blob-Referenzen auf password.txt löschen:
   `java -jar ../bfg-1.14.0.jar --no-blob-protection --delete-files password.txt`
4. Mit `git log password.txt` prüfen ob noch Commits mit dieser Datei existieren.
5. `git status` zeigt diese Datei jetzt als "neu" an, sie wurde also nicht aus dem "working directory" gelöscht; nur aus der History.
