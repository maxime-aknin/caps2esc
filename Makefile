all: 
	gcc caps2esc.c -o caps2esc -I/usr/include/libevdev-1.0 -levdev -ludev

install: 
	mv caps2esc /usr/bin
	cp caps2esc.service /lib/systemd/system
	systemctl start caps2esc
	systemctl enable caps2esc

