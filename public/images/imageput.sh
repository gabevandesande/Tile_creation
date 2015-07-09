#!/bin/bash
IMAGE_FILE=$2
FONT_STYLE=$6
FONT_COLOR=$4
FONT_SIZE=$3
BORDER_COLOR=$7
BORDER_WIDTH="5"
TEXT_OUTLINE_COLOR=$5
TEXT_OUTLINE_WIDTH="2"
GRAVITY="center"
FILL_TEXT=$1


convert $IMAGE_FILE         \
	-font  $FONT_STYLE  \
	-fill $FONT_COLOR \
	-bordercolor $BORDER_COLOR    \
	-border $BORDER_WIDTH             \
	-stroke $TEXT_OUTLINE_COLOR         \
	-strokewidth $TEXT_OUTLINE_WIDTH        \
	-pointsize $FONT_SIZE       \
    -gravity $GRAVITY       \
    -annotate 0 "$FILL_TEXT" public/images/tile.gif

echo tile.gif


#MODIFICATIONS
# -colorspace Gray
# -sepia-tone 65%
# -distort Arc 60

#FONTS
#Andale-Mono
#American-Typewriter-light
#courier
#Baskerville-old-face
#Bauhaus-93
#Bell-MT
#Big-Caslon-Medium
#chalkduster
#casual
#Century-gothic
#edwardian-script-ITC

#IMAGES
#fantasy
#motivation
#productivity
#serene
#serene2
#abstractnature
#darknature
#environment
#hobbies
#lovenature

#QUOTES
#Our peaceful \n thoughts \n of today \n determine \n our tomorrow
#Forget the \n reasons it \n wont work, \n and remember \n the reasons \n it will.
#You do not \n have to be \n great to start, \n but you do \n have to start \n to be great.
#Fantasy \n is not a way \n of escaping \n reality. Its a \n way of \n understanding it.
#Do what \n you love, \n love what \n you do.

