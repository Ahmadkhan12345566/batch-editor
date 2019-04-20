# Change the permission of the shell script to execute
# sudo chmod +x safeedit.sh

# shell script run command 
# Command line mode : ./safeedit.sh myfile.txt
#	    or
# Interactive modee  : ./safeedit.sh
 		
file=$1
param2=$2
# check if more than one param is there
if [ -z  "$param2" ]
then
  echo "got the file name: "$file
  if [ -z "$file" ]                             # If filename is empty
  then
 	echo "What File Do You Wish to Edit?"
 	read file                               # Read filename from prompt
 	if [ -z "$file" ]
 	then
 	    echo "Invalid input."
 	    exit 0
	fi
   fi
else
  echo "too many parameters entered"
  exit 0 
fi 
if [ -f "$file" ]                               # If file exists 
then
	echo "Creating a backup file of " $file 
        cp $file $file".bak"                    #take a back up
else
            echo "file does not exists."
fi
echo "Editing :" $file
vi  $file
