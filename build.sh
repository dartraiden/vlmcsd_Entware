#!/bin/bash

CFG=/opt/etc/vlmcsd.ini
BIN=/opt/sbin/vlmcsd
INIT=/opt/etc/init.d/S37vlmcsd
OPKG=opkg-utils/opkg-build -c -Z gzip -o root -g root

build() {
	chmod 600 "$ARCH""$CFG"
	chmod 775 "$ARCH""$BIN" "$ARCH""$INIT"
	"$OPKG" "$ARCH"
}

git clone https://git.yoctoproject.org/cgit/cgit.cgi/opkg-utils

if [[ "$1" = "armv5" ]]
then
	ARCH=armv5sf-k3.2
	build
elif [[ "$1" = "armv7" ]]
then
	ARCH=armv7sf-k3.2
	build
elif [[ "$1" = "mipsel" ]]
then
	ARCH=mipselsf-k3.4
	build
elif [[ "$1" = "mips" ]]
then
	ARCH=mipssf-k3.4
	build
elif [[ "$1" = "x64" ]]
then
	ARCH=x64-k3.2
	build
elif [[ "$1" = "x86" ]]
then
	ARCH=x86-k2.6
	build
else
	ARCH=armv5sf-k3.2
	build

	ARCH=armv7sf-k3.2
	build

	ARCH=mipselsf-k3.4
	build

	ARCH=mipssf-k3.4
	build

	ARCH=x64-k3.2
	build

	ARCH=x86-k2.6
	build
fi
