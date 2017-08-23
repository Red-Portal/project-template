#!/bin/bash

if [[ $# -eq 0 ]]
then
    echo "Error: not enough arguments"
    echo "Please provide the project name as --NAME=[PROJECT_NAME]"
    exit 2
fi

for i in "$@"
do
    case $i in
	--NAME=*)
	    NAME="${i#*=}"
	    shift # past argument=value
	    ;;
	*)
	    echo "Error: Unknown Command Line Argument."
	    exit 2
	    ;;
    esac
done

echo "setting project name to ${NAME} in ./include"
mv "./include/template_project"  "./include/${NAME}"

echo "setting project name to ${NAME} in ./src"
sed -i -- "s/template_project/${NAME}/g" ./src/*

echo "setting project name to ${NAME} in CMakeLists"
sed -i -- "s/template_project/${NAME}/g" ./CMakeLists.txt 

echo "removing original github directory"
rm -rf .git

echo "initializing new github directory"
git init

echo "install successful..."
echo "self destroying install script"
rm -- "$0"

exit 0
