# How to build package
Use [opkg-build](https://git.yoctoproject.org/cgit/cgit.cgi/opkg-utils) from Yocto Project:

```
sudo su
git clone https://github.com/dartraiden/vlmcsd_Entware
git clone https://git.yoctoproject.org/cgit/cgit.cgi/opkg-utils
cd vlmcsd_Entware/<your_arch>
chmod 600 opt/etc/vlmcsd.ini
chmod 755 opt/sbin/vlmcsd opt/etc/init.d/S37vlmcsd
cd ../..
opkg-utils/opkg-build -c -Z gzip -o root -g root vlmcsd_Entware/<your_arch>
```

or download compiled .ipk from Releases.

# How to activate Windows and Office

## Windows:
```
slmgr.vbs /upk
slmgr.vbs /ipk XXXXX-XXXXX-XXXXX-XXXXX-XXXXX
slmgr.vbs /skms 192.168.1.1
slmgr.vbs /ato
```
XXXXX-XXXXX-XXXXX-XXXXX-XXXXX - [Generic Volume License Key](https://docs.microsoft.com/windows-server/get-started/kmsclientkeys) corresponding to the installed edition of Windows.

## Office:
```
cscript "C:\Program Files\Microsoft Office\Office16\ospp.vbs" /dstatus
cscript "C:\Program Files\Microsoft Office\Office16\ospp.vbs" /unpkey:XXXXX
```
XXXXX — the first 5 characters shown by the previous command.

```
cscript "C:\Program Files\Microsoft Office\Office16\ospp.vbs" /inpkey:YYYYY-YYYYY-YYYYY-YYYYY-YYYYY
cscript "C:\Program Files\Microsoft Office\Office16\ospp.vbs" /sethst:192.168.1.1
cscript "C:\Program Files\Microsoft Office\Office16\ospp.vbs" /act
```
YYYYY-YYYYY-YYYYY-YYYYY-YYYYY - [Generic Volume License Key](https://docs.microsoft.com/deployoffice/vlactivation/gvlks) corresponding to the installed edition of Office or particular product.

# Thanks to
- [Hotbird64](https://forums.mydigitallife.net/members/hotbird64.333466/) for vlmcsd:
  - vlmcsd-armv5el-musl-thumb-static
  - vlmcsd-armv7el-uclibc-static
  - vlmcsd-mips32el-uclibc-static
  - vlmcsd-mips32-musl-static
  - vlmcsd-x64-musl-static
  - vlmcsd-x86-musl-static
