#!/bin/bash

# create exercise repository
rm -rf exercise
git init exercise
cd exercise

touch greeting.txt
git add greeting.txt
git commit -m "Add file greeting.txt"
echo "hello" > greeting.txt
git add greeting.txt
git commit -m "Add content to greeting.txt"

# Create a file on branch1
git checkout -b branch1
echo "This is a relevant fact" > file.txt
git add file.txt
git commit -m "add relevant fact"


git checkout master
echo "This is an indispensable truth!" > file.txt
git add file.txt
git commit -m "add indispensable truth!"