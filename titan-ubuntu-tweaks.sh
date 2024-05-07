# disable touch
echo "blacklist hid_generic" > /etc/modprobe.d/blacklist.conf
update-initramfs -u
