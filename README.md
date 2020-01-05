# How to build package
Use [opkg-build](https://git.yoctoproject.org/cgit/cgit.cgi/opkg-utils) from Yocto Project:

```
git clone https://github.com/dartraiden/vlmcsd_Entware
git clone https://git.yoctoproject.org/cgit/cgit.cgi/opkg-utils
cd vlmcsd_Entware/<your_arch>
chmod 600 opt/etc/vlmcsd.ini
chmod 775 opt/sbin/vlmcsd opt/etc/init.d/S37vlmcsd
cd ../..
opkg-utils/opkg-build -c -Z gzip -o root -g root vlmcsd_Entware/<your_arch>
```

or download compiled .ipk from Releases.

# Thanks to
- [Hotbird64](https://forums.mydigitallife.net/members/hotbird64.333466/) for vlmcsd
