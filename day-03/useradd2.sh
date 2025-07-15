#!/bin/bash

read -p "Enter username: " name

# Check if input is empty
if [ -z "$name" ]; then
  echo "Error: Username cannot be empty!"
  exit 1
fi

# Check if user already exists
if id "$name" &>/dev/null; then
  echo "Error: User '$name' already exists!"
  exit 1
fi

# Create user
sudo useradd -m "$name"

# Check if useradd was successful
if [ $? -eq 0 ]; then
  echo "User '$name' created successfully!"
else
  echo "Failed to create user '$name'."
fi

