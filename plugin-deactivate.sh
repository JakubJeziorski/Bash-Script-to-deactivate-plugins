#!/bin/bash

# Escapes to Desktop folder
cd ../
cd ../

# Creates testing folder with a webserver-like structure with the name given if "-test" is added.
if [ "$1" == "-test" ]; then
    mkdir -p "$2"
    cd "$2" || exit
    for i in {1..3}; do
        mkdir -p site-$i
        mkdir -p "site-$i/plugin-one" "site-$i/plugin-two"
    done
else
    echo "Normal behaviour $1"
fi


