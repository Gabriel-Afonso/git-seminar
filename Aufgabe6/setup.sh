#!/bin/bash

# create exercise repository
rm -rf exercise
rm -rf exercise-remote
git init --bare -b main exercise-remote
git clone exercise-remote exercise
cd exercise

touch file.txt
git add file.txt
git commit -m "Initial commit"
git push

echo "This is a relevant fact" > file.txt

git add file.txt

git commit -m "add relevant fact"

git checkout -b quickfix HEAD~1

echo "This is a very quick fix" > fix.txt

git add fix.txt

git commit -m "Make quick fix - should be moved to main"