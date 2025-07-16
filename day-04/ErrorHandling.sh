#!/bin/bash

set -e
trap 'echo "Error occurred at line $LINENO"' ERR

num=$1  # argument se number le rahe hain

if (( num % 2 == 0 )); then
    echo " $num is multiple of 2"
else
    echo " $num is not multiple of 2"
    false
fi

echo "🎉 Script completed successfully!"

