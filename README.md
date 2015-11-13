# pod_desktop
Bash script for automatic desktop wallpaper change using Picture Of the Day (National Geographic or NASA)


## HOWTO use it

* Download pod_desktop.sh and store it somewhere, e.g. ~/bin
* Setup cron to call ~/bin/pod_desktop.sh regularly, 

$ crontab -e
```
*/30 * * * * /home/vvolkov/bin/pod_desktop.sh
```
* Call ~/bin/pod_desktop.sh for the first time manually (this should download the first image and create a symlink to it)
* Set your desktop background to symlink ~/Pictures/pod/wallpaper
* enjoy ;)

P.S. By default script downloads National Geographic POD, if you want to use NASA POD, comment/uncomment block of code in the script
