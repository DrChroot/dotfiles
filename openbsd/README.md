Remember to fetch your nonfree firmware drivers previous to the install... I hadn't thought to do that and gave myself a hard time.

To prevent it happening again, I format a flash drive as FAT32 in GParted, mounted it, and run this on it:
```bash
wget -r http://firmware.openbsd.org/firmware/6.1/
```

Then, after my simple OpenBSD install (I which I set it up to connect to my local network, even though it doesn't recognize my wifi card yet.), I'll mount the USB, `mount /dev/sd1i /mnt` and then `fw_update iwn-firmware-5.11p1.tgz` or whatever I need.

===

Pretty basic, and adapted from Derek Sivers.

The install script will also add Gnome3, so be prepared for bloat up to your throat. (~474 packages... still puts Ubuntu to shame!)


=============

OpenBSD 6.1
https://sivers.org/openbsd

Derek Sivers
derek@sivers.org

No tutorial here.  Find that at:
http://www.openbsd.org/faq/
and
https://www.nostarch.com/obenbsd2e

These are just a few installation shortcuts.

############################
##  FIRST BOOT: (as root)
############################

vi /etc/fstab
	Change all the "rw" to "rw,softdep,noatime"

vi /etc/login.conf
	If you've got 4G or more of RAM, change these two lines to:
	:datasize-max=2048M:\
	:datasize-cur=2048M:\

vi /etc/doas.conf
	Add just these 3 words, (changing "YOURNAME" to regular username:)
	permit nopass YOURNAME

vi /etc/installurl
	Add just this line, or a closer mirror from http://www.openbsd.org/ftp.html
	http://ftp3.usa.openbsd.org/pub/OpenBSD


Move all the dotfiles from dotfiles/ directory here, into your /home/YOURNAME/

reboot
(so the /etc/fstab changes make faster disk access)


############################
##  SECOND BOOT: (as regular user)
############################

Look at packages in pkglist. This is what I use. If no objections, type:

doas INSTALL.sh

# Install ports for future use, but for now for the standard web fonts:
cd /tmp/
ftp ftp://mirrors.syringanetworks.net/pub/OpenBSD/6.1/ports.tar.gz
cd /usr ; doas tar xfz /tmp/ports.tar.gz
cd /usr/ports/fonts/msttcorefonts
doas make install clean
