#!/bin/bash

code_clone() {
    echo "cloning django app ..."
    git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_requirements() {
    echo "installing dependencies ..."
    sudo apt-get update
    sudo apt-get install -y docker.io nginx
}

require_restart() {
    sudo chown $USER /var/run/docker.sock
    sudo systemctl enable docker
    sudo systemctl enable nginx
    sudo systemctl restart docker
}

deploy() {
    cd django-notes-app || { echo "App folder not found"; exit 1; }
    docker build -t notes-app:latest .
    docker run -d -p 8000:8000 notes-app:latest
}

echo "*************** DEPLOYMENT STARTED *********************"

if code_clone; then
    cd django-notes-app
else
    echo "Repo clone failed or already exists – using existing"
    cd django-notes-app || { echo "Folder missing"; exit 1; }
fi

cd .. # go back before deploy

if ! install_requirements; then
    echo "installation failed"
    exit 1
fi

if ! require_restart; then
    echo "system fault identified"
    exit 1
fi

deploy
echo "*************** DEPLOYMENT DONE *********************"
echo "Now open: http://server-ip:8000"

