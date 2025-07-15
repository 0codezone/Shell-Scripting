#!/bin/bash

# Check if username argument is given
if [ -z "$1" ]; then
  echo "Usage: $0 <username>"
  exit 1
fi

username=$1

echo "Adding new user: $username"

# Check if user already exists
if id "$username" &>/dev/null; then
  echo "Error: User '$username' already exists!"
  exit 2
fi

# Add user
sudo useradd -m "$username"

# Check status
if [ $? -eq 0 ]; then
  echo "User '$username' added successfully!"
else
  echo "Failed to add user '$username'"
fi

