**Store name of files in directory to file**

```bash
#!/bin/bash

# Store folder content into array
i=0
while read line
do
	array[ $i ]="$line"
	(( i++ ))
done < <(ls folder/)

# Iterate through files in array
n=0
while [ $n -le $i ] 
do
	name=$(echo ${array[n]}) # Write name of file
	echo $name>>result 2>/dev/null # Push result (standart output) to a file. Standart error will send to /dev/null (to trash)
	(( n++ ))
done
```