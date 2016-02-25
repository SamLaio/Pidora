echo "deb http://packages.openmediavault.org/public kralizec main" > /etc/apt/sources.list.d/openmediavault.list
cd /tmp
wget -O - http://packages.openmediavault.org/public/archive.key | apt-key add -
apt-get update
openmediavault-keyring postfix -y
apt-get install openmediavault -y
omv-initsystem
shutdown -r now
