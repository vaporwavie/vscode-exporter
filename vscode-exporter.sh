#!/bin/bash

cat extensions

echo "Options:"
echo "1 - Install everything"
echo "2 - Select an extension to install"
echo "Choose an option: "
read -r c

if [[ $c = "1" ]]; then
    echo "TODO install all extensions" # TODO
fi

if [[ $c = "2" ]]; then
    echo "Choose an extension: "
    HOOK=$(cat extensions | grep --color='auto' $c) 

    echo "Install extension $HOOK? (Y/y/N/n)"
    read -r o

    if [[ $o = "Y" || "y" ]]; then
        code --install-extension $HOOK
        echo "Extension installed!"
    if [[ $o = "N" || "n" ]]; then
        exit
    fi
    else
        echo "Something went wrong. Try again."
    fi
fi

