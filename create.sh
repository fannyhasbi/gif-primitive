#!/bin/bash

# @author Fanny Hasbi
# @website https://fannyhasbi.id

# Declare variables
PRIMITIVE="/bin/primitive"
help="Usage : ./create.sh 5 100"

inputfile="~/Pictures/Haz.jpg"
outputfolder="./output/"
ext="jpg"
prefix="haz"
imagecount=$1
shapecount=$2

# Check if argument exists
if [ -z "$1" ]; then
  echo "Please specify the image count"
  echo "$help"
  exit 1
fi

if [ -z "$2" ]; then
  echo "Please specify the shape count"
  echo "$help"
  exit 1
fi

# Check if output folder exists
if [ ! -d $outputfolder ]; then
  echo "Output folder doesn't exist"
  exit 1
fi

# main generator
for i in {1..5}
do
  echo "Generating image... #$i"

  name="$prefix-$i.$ext"
  output="$outputfolder$name"

  comm="$PRIMITIVE -i $inputfile -o $output -n $shapecount"

  eval $comm

  printf "Image generated : $output\n\n"
done

echo "==== DONE ===="
echo "Generated images are under $outputfolder"