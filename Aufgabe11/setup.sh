#!/bin/bash

# create exercise repository
rm -rf exercise
git init -b main exercise
cd exercise

#Commit a
echo -e "Ben\nTom\nSally" > names.txt
git add names.txt
git commit -m "Commit A: Added the names file"

#Common base commit
#Commit b
echo "This is a lovely sentence" > sentence.txt
git add sentence.txt
git commit -m "Commit B: Added the sentence file"

#Branch away to feature
git branch feature

#Commit c
echo "This is another delicous sentence" >> other_sentence.txt
git add other_sentence.txt
git commit -m "Commit C: Added the additional other_sentence file"

#Commit d
echo -e "Cat\nDog\nMouse" >> animals.txt
git add animals.txt
git commit -m "Commit D: Added the animals file"

git checkout -b fixup
#Commit x
echo -e "Craig\nJodie\nNathan" >> fixup.txt
git add fixup.txt
git commit -m "Commit X: added fixup.txt"

#Switch now to feature (commit b)
git checkout feature

#Commit e
echo "1\n2\n6\n54" >> numbers.txt
git add numbers.txt
git commit -m "Commit E: Added the numbers file"

#Commit f
echo -e "Craig\nJodie\nNathan" >> names.txt
git add names.txt
git commit -m "Commit F: Updated and added more names to the file"

#Commit g
echo "Finally I think this is probably the last sentence to add" >> sentence.txt
git add sentence.txt
git commit -m "Commit G: Updated the original sentence file"

#Commit h
echo "Boring extra file for no reason" > boring.txt
git add boring.txt
git commit -m "Commit H: Added the boring file"

# add commit f,g to main
git checkout main
git cherry-pick HEAD@{3}^..HEAD@{2}

git branch -D fixup

git checkout feature
echo "Info file" > info.txt
git add info.txt
git commit -m "Commit I: Added the info file"

git checkout main
git reset --hard HEAD~2

git checkout feature
git reset --hard HEAD~1

git checkout main