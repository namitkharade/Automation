#!/bin/bash

function create() {
    cd 
    cd Desktop/Project/Automation
    python create.py $1
    cd Desktop/Project/$1
    git init
    git config --global user.email "namitkharade.com"
    git remote add origin git@github.com:NamitKharade/$1.git
    touch README.md
    git add .
    git commit -m "Initial commit"
    git push -u origin master   
}