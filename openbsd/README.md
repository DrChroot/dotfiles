Remember to fetch your nonfree firmware drivers previous to the install... I hadn't thought to do that and gave myself a hard time.

To prevent it happening again, I format a flash drive as FAT32 in GParted, mounted it, and run this on it:
```wget -r http://firmware.openbsd.org/firmware/6.1/
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

When it's done, these two things help make symlinks for ruby and python,
so you can type "ruby" not "ruby23":

pkg_info -M ruby | grep ln >> /tmp/ln
pkg_info -M python | grep ln >> /tmp/ln
doas sh /tmp/ln

ftp http://www.youtube-dl.org/downloads/latest/youtube-dl
chmod 700 youtube-dl
# Test it with:
./youtube-dl 1ehWlVeMrqw
# If it works, do:
doas mv youtube-dl /usr/local/bin/
# If it ever doesn't work, just repeat this process. It updates often.

# Install ports for future use, but for now for the standard web fonts:
cd /tmp/
ftp http://ftp3.usa.openbsd.org/pub/OpenBSD/6.1/ports.tar.gz
cd /usr ; doas tar xfz /tmp/ports.tar.gz
cd /usr/ports/fonts/msttcorefonts
doas make install clean



############################
##  startx : ratpoison
############################

After years of trying hard to get a graphical desktop on Linux installations,
this is still a thrill.  Type "startx", and it should bring to you a desktop.

If you're using my dotfiles, your window manager is now Ratpoison.  See:
http://www.nongnu.org/ratpoison/

You can alter its functions by editing the .ratpoisonrc file.

My main change is:
escape Super_L
	... to use the Windows logo key as the command key

These "bind _ exec" lines ...

bind f exec firefox
bind m exec chrome
bind x exec urxvt +sb -fn "xft:Inconsolata:pixelsize=19"
bind r exec xterm -rv

... mean you launch that program by hitting the Windows logo key, then the
letter f to launch Firefox, x to launch a terminal, etc.

Add your own most commonly-used programs here.

To get out of ratpoison, do [Windows key] then ":" to type a command in the
top-right corner of your screen.  Then type "quit" to quit it.

It's a little jarring, at first, to have no menu bar, but god, I love it.



############################
##  stuck?
############################

OK, you can email me, whether crying for help, or just saying thanks:

derek@sivers.org

- Derek, writing this from a wharf in New Zealand.

