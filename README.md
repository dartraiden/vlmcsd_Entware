# How to build package
Use [opkg-build](https://git.yoctoproject.org/cgit/cgit.cgi/opkg-utils) from Yocto Project:

```
git clone https://github.com/dartraiden/vlmcsd_Padavan
git clone https://git.yoctoproject.org/cgit/cgit.cgi/opkg-utils
rm -rf ~/vlmcsd_Padavan/.git ~/vlmcsd_Padavan/.gitattributes ~/vlmcsd_Padavan/README.md
chmod 600 ~/vlmcsd_Padavan/opt/etc/vlmcsd.ini
chmod 775 ~/vlmcsd_Padavan/opt/sbin/vlmcsd ~/vlmcsd_Padavan/opt/etc/init.d/S37vlmcsd
chmod +x ~/vlmcsd_Padavan/opt/sbin/vlmcsd ~/vlmcsd_Padavan/opt/etc/init.d/S37vlmcsd ~/vlmcsd_Padavan/CONTROL/postinst ~/vlmcsd_Padavan/CONTROL/postrm
~/opkg-utils/opkg-build -c -Z gzip -o root -g root ~/vlmcsd_Padavan ~
```

or download compiled .ipk from Releases.

# Thanks to
- [Hotbird64](https://forums.mydigitallife.net/members/hotbird64.333466/) for vlmcsd
