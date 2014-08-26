#! /bin/bash
#install xrdp
yum install gcc pam-devel openssl-devel libXfont pixman libX11-devel libXfixes-devel autoconf automake libtool -y
yum install tigervnc-server -y
yum install gcc pam-devel openssl-devel xrdp -y
#iptables -A INPUT -m state --state NEW -m tcp -p tcp --dport 3389 -j ACCEPT
#ip6tables -A INPUT -m state --state NEW -m tcp -p tcp --dport 3389 -j ACCEPT
#echo "--port=3389:tcp" >> /etc/sysconfig/system-config-firewall
#service iptables reload
#service ip6tables reload
chkconfig tigervnc-server on
service tigervnc-server start


#install web server
yum install httpd mysql mysql-server php php-devel php-mysql sqlite sqlite-devel -y
yum install  mod_ssl  mod_perl  mod_auth_mysql -y
#yum install  httpd  php  php-mysql  mysql  mysql-server -y
#yum install apache2 php5 libapache2-mod-php5 -y
#yum install mysql-server mysql-client php5-mysql -y
chkconfig mysqld on
service mysqld start
chkconfig httpd on
service httpd start

#ntfs
sudo apt-get install ntfs-3g -y

#zh_tw
yum install system-config-language -y
yum install cjkuni-ukai-fonts cjkuni-uming-fonts taipeifonts wqy-bitmap-fonts wqy-microhei-fonts -y
yum install scim scim-tables scim-tables-chinese scim-tables-chinese-extra scim-array scim-chewing -y
echo  "/etc/sysconfig/i18n"
echo "LANG=\"en_US.UTF-8\"->LANG=\"zh_TW.UTF-8\""