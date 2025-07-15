#!/bin/bash

input=""

while [ "$input" != "exit" ]
do
    echo "Type something (type 'exit' to quit):"
    read input
    echo "You typed: $input"
done

