#!/bin/bash

if [ ! -f deb_package/usr/share/logisim-evolution/logisim-evolution.jar ]; then
	wget "https://github.com/reds-heig/logisim-evolution/releases/download/v3.3.4/logisim-evolution-3.3.4-all.jar" -O logisim-evolution.jar
	mv logisim-evolution.jar deb_package/usr/share/logisim-evolution/logisim-evolution.jar
fi

dpkg-deb -b deb_package .
