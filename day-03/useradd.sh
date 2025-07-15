#!/bin/bash


echo "add new user"
read -p "enter user name to add : " name
echo "you entered $name"

sudo useradd -m $name

echo "new user added"

