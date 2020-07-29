### About

FreeBox want to port NomadBSD openbox environment on FreeBSD.

tested on freebsd 12-release and freebsd 13-current

### install

if you run FreeBSD as guest, make sure to install the required drivers first.

if you use intel embedded graphic than
```bash
pkg install graphics/drm-kmod
kldload i915kms
echo 'kld_list="i915kms"' >> /etc/rc.conf
```

to install FreeBox

```bash
# install requirements
pkg install xorg bash rsync

# than run install.sh
cd FreeBox
./install.sh
``` 

### use FreeBox

1. prepare user homedir.
   this step can be skipped if the user is created after FreeBox installation
```bash
rsync -ahv /etc/skel $HOMEDIR
chown -R $USER:$GROUP $HOMEDIR
```
2. run Freebox with `startx`

### Screenshots
![](http://nomadbsd.org/screenshots/nomadbsd-1.3-RC1-ss1.png)
