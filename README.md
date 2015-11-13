# pod_desktop
Bash script for automatic wallpaper change using POD (National Geographic or NASA)


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

