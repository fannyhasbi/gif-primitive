#!/bin/bash

# @author Fanny Hasbi
# @website https://fannyhasbi.id

# Declare variables
PRIMITIVE="/usr/local/bin/primitive"
help="Usage : ./create.sh path/to/picture.jpg 5 100"

inputfile=$1
outputfolder="./output/"
ext="jpg"
prefix="haz"
imagecount=$2
shapecount=$3

# Check if argument exists
if [ -z "$1" ]; then
  echo "Please specify the image path"
  echo "$help"
  exit 1
fi

if [ -z "$2" ]; then
  echo "Please specify the image count"
  echo "$help"
  exit 1
fi

if [ -z "$3" ]; then
  echo "Please specify the shape count"
  echo "$help"
  exit
fi

# Check if output file and folder exists
if [ ! -f $inputfile ]; then
  echo "Image doesn't exist"
  exit 1
fi

if [ ! -d $outputfolder ]; then
  echo "Output folder doesn't exist"
  exit 1
fi


# main generator
i=1
while [[ $i -le $imagecount ]];
do
  echo "Generating image... #$i"

  name="$prefix-$i.$ext"
  output="$outputfolder$name"
  comm="$PRIMITIVE -i $inputfile -o $output -n $shapecount"

  eval $comm
  printf "Image generated : $output\n\n"

  (( i = i + 1))
done

echo "==== DONE ===="
echo "Generated images are under $outputfolder"