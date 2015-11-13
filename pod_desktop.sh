#!/bin/sh
#Based on code of APOD, you can really find everywhere on the web.

# NASA POD
#BASE_URL=http://apod.nasa.gov/apod
#wget -N $BASE_URL/astropix.html -O /tmp/pod.html
#img_rel_location=`egrep -o -m 1 "image/.*\.jpg" /tmp/pod.html`
#img_location="$BASE_URL/$img_rel_location"

# National Geographic POD
wget -N http://photography.nationalgeographic.com/photography/photo-of-the-day/ -O /tmp/pod.html
img_location=`egrep -o -m 1 "http://photography.nationalgeographic.com/u/.*\w" /tmp/pod.html`

rm -f /tmp/pod.html

TODAY=$(date +'%Y%m%d')
wget $img_location -O ~/Pictures/pod/$TODAY.jpg

rm -f ~/Pictures/pod/wallpaper
ln -s ~/Pictures/pod/$TODAY.jpg ~/Pictures/pod/wallpaper
