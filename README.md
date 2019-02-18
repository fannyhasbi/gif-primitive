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
* Change the variables to whatever you want, or just use the default value.
* `./create.sh 100`
* Image generated, so the final step is to animate it using [gifmaker.me](https://gifmaker.me/)