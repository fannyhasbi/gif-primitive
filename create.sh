#!/bin/bash

# @author Fanny Hasbi
# @website https://fannyhasbi.id

# Declare variables
PRIMITIVE="/bin/primitive"

inputfile="~/Pictures/Haz.jpg"
outputfolder="./output/"
ext="jpg"
prefix="haz"
shapecount=$1

# Check if argument exists
if [ $# -eq 0 ]; then
  echo "Please specify the shape count"
  echo "Usage : ./create.sh 100"
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