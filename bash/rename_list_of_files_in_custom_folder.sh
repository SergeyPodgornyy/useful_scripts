#!/bin/bash

rm -rf folder/
mkdir folder/

touch folder/Киев
touch folder/Львов
touch folder/Одесса
touch folder/Paris

declare -A translateArray=(
    ['Киев']='Kiev'
    ['Львов']='Lemberg'
    ['Одесса']='Odessa'
)

OK='\033[1;32m OK \033[0m-'
FAIL='\033[1;31m FAIL \033[0m-'

# Specifying name of folder
echo 'Specify folder where files located: '
read DIRECTORY # test folder - 'folder'
DIRECTORY=$(basename $DIRECTORY)

# Check if folder exists
if [ ! -d "$DIRECTORY" ]; then
  # Control will enter here if $DIRECTORY does not exists.
  DATE=`date +%Y-%m-%d\ %H:%M:%S`
  echo -en "[$DATE]$FAIL Folder $DIRECTORY/ does not exists\n" 2>&1 | tee -a result 
  exit
fi

i=0
while read line
do
    array[ $i ]="$line"
    (( i++ ))
done < <(ls $DIRECTORY/)

# Iterate through files in array
n=0
while [ $n -lt $i ] 
do
    name=$(echo ${array[n]}) # Write name of file

    if [ ${translateArray[$name]+_} ]; # Check if key exists in array
    then
        translatedName=$(echo ${translateArray[$name]})
        mv "$DIRECTORY/$name" "$DIRECTORY/$translatedName" &>> result
        DATE=`date +%Y-%m-%d\ %H:%M:%S`
        if [ $? -eq 0 ]; then
            echo -en "[$DATE]$OK Succesfully renamed from '$DIRECTORY/$name' to '$DIRECTORY/$translatedName'\n" 2>&1 | tee -a result
        else
            echo -en "[$DATE]$FAIL FAILED to rename '$DIRECTORY/$name'\n" 2>&1 | tee -a result
        fi
        
    else    # If key not exists, log the message
        DATE=`date +%Y-%m-%d\ %H:%M:%S`
        echo -en "[$DATE]$FAIL Name for '$name' does't set in array\n" 2>&1 | tee -a result 
    fi
    (( n++ ))
done

