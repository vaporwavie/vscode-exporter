#!/bin/bash

echo "Options:"
echo "1 - Install everything"
echo "2 - Select an extension to install"
echo "Choose an option: "
read -r option

if [[ $option = "1" ]]; then
    echo "Install everything"
    # @TODO
    # Do a count to use in a for
    # Use as parameters the number of strings in the extensions file
    # ALL=$(extension1 extension2 extension3 ...)
    # e.g code --install-extension $ALL
fi

if [[ $option = "2" ]]; then
    cat extensions
    sleep 1
    echo "Choose an extension: "
    read -r extensionSelect
    HOOK=$(cat extensions | grep --color='auto' $extensionSelect) 

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