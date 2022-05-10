#!/bin/bash
cd /home/sveloso/Downloads
if [ ! -d jpg ]
then
	mkdir jpg
fi
for image in *.png
do
	image_sans_ext=$(ls $image | awk -F. '{ print $1 }')
	convert $image_sans_ext.png jpg/$image_sans_ext.jpg
done
 


