**Rename list of files in custom folder**

```bash
#!/bin/bash


# Prepare test data
rm -rf folder/
mkdir folder/

touch folder/Kiev
touch folder/Lemberg
touch folder/Odessa
touch folder/Paris

# Declare array to rename files
declare -A translateArray=(
    ['Kiev']='Киев'
    ['Lemberg']='Львов'
    ['Odessa']='Одесса'
)

# Store files from folder in array
i=0
while read line
do
    array[ $i ]="$line"
    (( i++ ))
done < <(ls folder/)

# Iterate through file names in array
n=0
while [ $n -lt $i ] 
do
    name=$(echo ${array[n]}) # Write name of file

    if [ ${translateArray[$name]+_} ]; # Check if key exists in array
    then
        translatedName=$(echo ${translateArray[$name]})
        mv folder/$name folder/$translatedName &>> result
    else    # If key not exists, log the message
        DATE=`date +%Y-%m-%d\ %H:%M:%S`
        echo "[$DATE] Name for '$name' does't set in array" 2>&1 | tee -a result 
    fi
    (( n++ ))
done

```
