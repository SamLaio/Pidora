#! /bin/bash
#install xrdp
yum install gcc pam-devel openssl-devel libXfont pixman libX11-devel libXfixes-devel autoconf automake libtool -y
yum install tigervnc-server -y
yum install gcc pam-devel openssl-devel xrdp -y

#install web server
yum install httpd mysql-server php php-devel php-mysql sqlite sqlite-devel -y
#yum install apache2 php5 libapache2-mod-php5 -y
#yum install mysql-server mysql-client php5-mysql -y

#ntfs
sudo apt-get install ntfs-3g -y

#zh_tw
yum install system-config-language -y
yum install cjkuni-ukai-fonts cjkuni-uming-fonts taipeifonts wqy-bitmap-fonts wqy-microhei-fonts -y
yum install scim scim-tables scim-tables-chinese scim-tables-chinese-extra scim-array scim-chewing -y
echo  "/etc/sysconfig/i18n"
echo "LANG=\"en_US.UTF-8\"->LANG=\"zh_TW.UTF-8\""