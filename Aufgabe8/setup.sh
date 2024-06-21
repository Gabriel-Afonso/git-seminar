#!/bin/bash

# create exercise repository
rm -rf exercise
git init -b main exercise
cd exercise

echo '#! /usr/bin/env bash' > 'test.sh'
echo 'VERY_IMPORTANT_VARIABLE=true' >> 'test.sh'
echo 'if [ "$VERY_IMPORTANT_VARIABLE" = false ] ; then' >> 'test.sh'
echo ' echo "error"' >> 'test.sh'
echo '  exit 1' >> 'test.sh'
echo 'else' >> 'test.sh' >> 'test.sh'
echo '  echo "test passed"' >> 'test.sh'
echo '  exit 0' >> 'test.sh'
echo 'fi' >> 'test.sh'
chmod +x 'test.sh'
git add "test.sh"
git commit -m "Add test"

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

echo '#! /usr/bin/env bash' > 'test.sh'
echo 'VERY_IMPORTANT_VARIABLE=false' >> 'test.sh'
echo 'if [ "$VERY_IMPORTANT_VARIABLE" = false ] ; then' >> 'test.sh'
echo ' echo "error"' >> 'test.sh'
echo '  exit 1' >> 'test.sh'
echo 'else' >> 'test.sh' >> 'test.sh'
echo '  echo "test passed"' >> 'test.sh'
echo '  exit 0' >> 'test.sh'
echo 'fi' >> 'test.sh'
git add "test.sh"
git commit -m "changed test"