# GIF Primitive Auto-Generator
Bash script for GIF Primitive image generator. See primitive repo [here](https://github.com/fogleman/primitive).

## Pre-requisite
This repo is for generating [**primitive**](https://github.com/fogleman/primitive) images. So, you have to install it first. Make sure the primitive command is accessible through `/bin/primitive` or `/usr/bin/primitive`, if it's not so feel free to change the `$PRIMITIVE` value.

## Installation
* Clone this repo
   
   ```
   git clone https://github.com/fannyhasbi/gif-primitive
   ```

* Make it executable
   
   ```
   cd gif-primitive
   chmod +x create.sh
   ```

## Execution
```
./create.sh $path $imagecount $shapecount 
```

Argument | Type | Description
--- | --- | ---
`$path` | string | Path to the image which want to be generated
`$imagecount` | number | Number of generated image
`$shapecount` | number | Number of shape

1. Change the variables to whatever you want, or just use the default value.
2. Call it
   ```
   ./create.sh path/to/picture.jpg 5 100
   ```

   It means there will be 5 images with each contains 100 shapes.

3. Image generated, so the final step is to animate it using [gifmaker.me](https://gifmaker.me/)