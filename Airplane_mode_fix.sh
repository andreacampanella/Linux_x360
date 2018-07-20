if [ "$(whoami)" != "root" ]; then
	echo 'This script need to run as root'
	exit 1
fi
cp files/hp-keycodes.service /etc/systemd/system/hp-keycodes.service
systemctl daemon-reload
systemctl enable hp-keycodes.service
echo 'a reboot is needed.'
