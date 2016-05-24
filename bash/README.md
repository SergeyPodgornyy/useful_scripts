USEFUL BASH SCRIPTS
===================

*In this file stored all Bash Scripts from this folder*

***

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

# Iterate through file names in array
n=0
while [ $n -le $i ] 
do
	name=$(echo ${array[n]})
	echo $name>>result 2>/dev/null
	(( n++ ))
done
```

***