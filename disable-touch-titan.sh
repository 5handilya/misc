echo "blacklist usbhid" > /etc/modprobe.d/blacklist.conf
update-initramfs -u
