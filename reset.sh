#!/bin/bash

path=`find $HOME/.config/JetBrains/ -name "*IntelliJIdea*" -type d | tail -n 1`

if [ -z "$path" ]; then 
    echo "Idea is not installed";
    exit 1;
fi 

if [ -d $HOME/.java/.userPrefs ]; then
    echo "Deleting ... $HOME/.java/.userPrefs"
    rm -rf .java/.userPrefs
fi

if [ -f $path/options/other.xml ]; then
    echo "Deleting ... $path/options/other.xml"
    rm $path/options/other.xml
fi

if [ -d $path/eval ]; then
    echo "Deleting ... $path/eval"
    rm -rf $path/eval
fi

echo "Done"