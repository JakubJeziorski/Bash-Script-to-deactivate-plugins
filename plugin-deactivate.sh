#!/bin/bash
# server-structure /www/{website-url}/htdocs/wp-content/plugins/{plugin-name}
url="$1"
plugin="$2"


# Testing and Development
# Escapes to Desktop folder and then to Test Folder
# Creates testing folder with a webserver-like structure with the name given if "-test" is added.
if [ "$1" == "-test" ]; then
    cd ../
    cd ../
    cd Test-folder
    mkdir -p "$2"
    cd "$2" || exit
    for i in {1..3}; do
        mkdir -p "www/site$i.uk/htdocs/wp-content/plugins/plugin-name$1"
    done
fi

# Main functionality
# Rename plugin folder to "{plugin-name}-copy"
mv "www/$url/htdocs/wp-content/plugins/$plugin" "www/$url/htdocs/wp-content/plugins/$plugin-copy"
ls "www/$url/htdocs/wp-content/plugins"
sleep 1
# Rename plugin folder to back to orginal name
mv "www/$url/htdocs/wp-content/plugins/$plugin-copy" "www/$url/htdocs/wp-content/plugins/$plugin"
ls "www/$url/htdocs/wp-content/plugins"