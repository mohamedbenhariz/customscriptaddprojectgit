#!/bin/bash

helpFunction()
{
   echo ""
   echo "Usage: $0 -a parameterA -b parameterB -c parameterC"
   echo -e "\t-a Description of what is master branch"
   echo -e "\t-b Description of what is the remote URL"
   echo -e "\t-c Description of what is type of project 'angular,visualstudio'"
   echo -e "\texemple sh custumScript.sh -a master -b git@gitlab.com:typaza/readfile.git -c angular,visualstudio"
   exit 1 # Exit script after printing help
}

while getopts "a:b:c:" opt
do
   case "$opt" in
      a ) parameterA="$OPTARG" ;;
      b ) parameterB="$OPTARG" ;;
      c ) parameterC="$OPTARG" ;;
      ? ) helpFunction ;; # Print helpFunction in case parameter is non-existent
   esac
done

# Print helpFunction in case parameters are empty
if [ -z "$parameterA" ] || [ -z "$parameterB" ] || [ -z "$parameterC" ]
then
   echo "Some or all of the parameters are empty";
   helpFunction
fi

# Begin script in case all parameters are correct
echo "$parameterA"
echo "$parameterB"
echo "$parameterC"


git init --initial-branch=$parameterA 
git remote add origin $parameterB
FILE=.gitignore
if [ -f "$FILE" ]; then
    echo "$FILE exists."
	
else 
    echo "$FILE does not exist."
	curl -o .gitignore https://www.toptal.com/developers/gitignore/api/$parameterC
	echo $0 >> .gitignore
fi

echo custumScript.sh >> .gitignore
git add .
git commit -m "Initial commit"
git push -u origin $parameterA 