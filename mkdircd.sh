#!/bin/bash

#hello world for sanity

echo "Hello World"

#create a dir that the user will name 
mkdir $1
#move into the dir 
cd $1
#create a file that the user will name 
touch $2
#open the file in a text editor
nano $2

echo "Welcome to the file! Watch out for the spiders :)"

