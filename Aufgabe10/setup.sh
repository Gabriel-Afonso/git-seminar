#!/bin/bash

# create exercise repository
rm -rf exercise
git init -b main exercise
cd exercise

# Datei "file1.txt" mit Inhalt "Text in Datei 1" erstellen und committen
echo "Text in Datei 1" > file1.txt
git add file1.txt
git commit -m "Erste Datei hinzufügen"

# Datei "file2.txt" mit Inhalt "Text in Datei 2" erstellen und committen
echo "Text in Datei 2" > file2.txt
git add file2.txt
git commit -m "Zweite Datei hinzufügen"

# Datei "password.txt" mit Inhalt "password123" erstellen
echo "password123" > password.txt
echo "Neuer Text in Datei 1" > file1.txt
git add *
git commit -m "Neuer Text in Datei 1"

# Datei "file3.txt" mit Inhalt "Text in Datei 3" erstellen und committen
echo "Text in Datei 3" > file3.txt
git add file3.txt
git commit -m "Dritte Datei hinzufügen"

# Datei "file2.txt" anpassen und committen
echo "Neuer Text in Datei 2" > file2.txt
git commit -am "Zweite Datei angepasst"

# Datei "file2.txt" anpassen und committen
echo "Neuer Text in Datei 2" > file2.txt
git commit -am "Zweite Datei angepasst"

# Änderungen an der Datei main.py (ohne commit)
echo "Neuer Text in Datei 2" > file2.txt