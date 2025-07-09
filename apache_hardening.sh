#! /bin/bash
##Operating system supports CentOS Stream10
#Run this script with sudo privileges
#Apache installation check
#
#Install apache
yum install httpd -y
#Enable apache
systemctl enable httpd
#Start apache
systemctl start httpd

###Begin hardening steps###
## create a backup of configuration file
echo "Creating a backup of configuration file"
cp /etc/httpd/conf/httpd.conf ~/httpd.conf.backup
#Remove Server Banner Version
echo "Remove server banner version"
sed -i "$a ServerTokens Prod" /etc/httpd/conf/httpd.conf
sed -i "$a ServerSignature Off" /etc/httpd/conf/httpd.conf

##Disable directory browsing
sed -i 's/Options Indexes FollowSymLinks/Options -Indexes FollowSymLinks/g' /etc/httpd/conf/httpd.conf

##Add Etag to prevent obtaining sensitive information through etag headers.
sed -i "$a FileETag None" /etc/httpd/conf/httpd.conf

## Change permission to conf folder
sudo chmod -R 750 /etc/httpd/conf
#Restart the apache for apply the configuratio changes
systemctl restart httpd
