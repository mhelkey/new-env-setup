#!/bin/bash

echo Enter the email associated with your github

read email

ssh-keygen -t ed25519 -C $email

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_ed25519

echo Copy the following key and paste it into the new ssh key on github

cat ~/.ssh/id_ed25519.pub