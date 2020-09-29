#!/bin/bash

path=`find $HOME/.config/JetBrains/ -name "*IntelliJIdea*" -type d | tail -n 1`

if [ -z "$path" ]; then 
    echo "Idea is not installed";
    exit 1;
fi 

declare -a arr=("$HOME/.java/.userPrefs" 
                "$path/options/other.xml" 
                "$path/eval")

for i in "${arr[@]}"
do
    if [ -e $i ]; then
        echo "Deleting ... $i";
        rm -rf $i
    fi
done
echo "Done"