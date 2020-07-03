#!/bin/bash

if [ ! -f deb_package/usr/share/digital-simulator/Digital.jar ]; then
	wget "https://github.com/hneemann/Digital/releases/download/v0.24/Digital.zip" -O Digital.zip
	unzip Digital.zip
	mv -f Digital/Digital.jar deb_package/usr/share/digital-simulator/
	mv -f Digital/examples/ deb_package/usr/share/digital-simulator/
	rm -rf Digital.zip
	rm -rf Digital/
fi

dpkg-deb -b deb_package .
