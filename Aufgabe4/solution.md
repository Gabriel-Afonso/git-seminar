Aufgabe 1 (manual bisect):

1. git bisect start
2. git bisect good initial-commit
3. git bisect bad HEAD
4. ./test.sh
5. git bisect (good| bad)
6. Schritt 4 und 5 so lange wiederholen bis der Fehler gefunden wurde

Aufgabe 2 (auto bisect):

1. git bisect start
2. git bisect good initial-commit
3. git bisect bad HEAD
4. git bisect run ./test.sh
