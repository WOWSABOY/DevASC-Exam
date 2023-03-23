#!/bin/bash

#User input til git repository ssh path
echo SSH path:
read REP

#User input til git commit kommadoen
echo Commit comment:
read comment

#Tilføjer ssh profil til stien
ssh-add ~/.ssh/id_ed25519

#WOAW EN MASSE GIT KOMMANDOER
git init
git add *
git commit -m "$comment"
git branch -M main
git remote add origin "$REP"
git push -u origin main
