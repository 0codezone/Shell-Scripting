#!/bin/bash

ls *.sh | while read filename
do
    echo "Found script file: $filename"
done

