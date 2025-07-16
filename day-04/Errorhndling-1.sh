#!/bin/bash

create_dir () {
	mkdir demo
}

if ! create_dir; then
	echo "directory alredy exist, stop it"
	exit 1
fi


echo "code is intruppted file already exist"
