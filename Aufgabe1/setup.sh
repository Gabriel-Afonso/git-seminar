#!/bin/bash

# create exercise repository
rm -rf exercise
git init exercise
cd exercise

echo "Text in Datei 1" > file1.txt
cat > libs.txt << EOF
awesome-library-v1.2.0
EOF
git add *
git commit -m "initial commit"

echo "Text in Datei 2" > file2.txt
echo "" > libs.txt
cat > libs.txt << EOF
awesome-library-v1.2.1
other-library-v2.3.0
EOF
git add *
git commit -m "Zweite Datei hinzufügen & lib update"

cat > libs.txt << EOF
awesome-library-v1.3.0
other-library-v2.3.0
EOF
git add *
git commit -m "update awesome-library"

echo "Text in Datei 3" > file3.txt
git add *
git commit -m "Dritte Datei hinzufügen"

echo "Neuer Text in Datei 2" > file2.txt
git commit -am "Zweite Datei angepasst"