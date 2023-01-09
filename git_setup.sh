#!/bin/bash

echo Enter the email associated with your github

read email

echo Enter your full name

read name

ssh-keygen -t ed25519 -C $email
git config --global user.email $email
git config --global user.name $name

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_ed25519

echo Copy the following key and paste it into the new ssh key on github

cat ~/.ssh/id_ed25519.pub