#!/bin/bash

# Variables

LIST='extensions'
TRIM=$(tr "\t" "\n" < extensions)

echo "Options:"
echo "1 - Install everything"
echo "2 - Select an extension to install"
echo "Choose an option: "
read -r option

if [[ $option = "1" ]]; then
    echo "Do you really want to install $LIST? (Y/y/N/n)"
    read -r installAll
    if [[ $installAll =  "Y" || "y" ]]; then
        for i in $TRIM; do code --install-extension $i; done
        echo "All set! Your extensions were installed."
    fi
fi

if [[ $option = "2" ]]; then
    cat $LIST
    sleep 1
    echo "Choose an extension: "
    read -r extensionSelect
    HOOK=$(cat $LIST | grep --color='auto' $extensionSelect)

    echo "Install extension $HOOK? (Y/y/N/n)"
    read -r extensionConfirm

    if [[ $extensionConfirm = "Y" || "y" ]]; then
        code --install-extension $HOOK
        echo "Extension installed!"
    fi
    if [[ $o = "N" || "n" ]]; then
        exit
    fi
fi