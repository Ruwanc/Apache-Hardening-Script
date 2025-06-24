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
#

