# Apache-Hardening-Script
A bash script to install apache2 (httpd) on CentOS and perform the simple but yet powerfull hardening configurations on the Apache web server.

## Purpose
This script is created purely based on the personal interest. Further this script is intended for System Administrators and DevOps enginers or anyother persons who are interest in webservers and webserver hardening.
By running this script you will be able to achieve the followings.
- Install the Apache wen server on the CentOS server.
- Apply the apache server hardening configurations.

## System Requirements
- CentOS Stream 10
- Root or sudo privileges
- Internet connectivity for the server (For install the Apache)

## How to use this script
```Bash
#Clone the repository and go inside of the repository
git clone https://github.com/Ruwanc/Apache-Hardening-Script.git
cd Apache-Hardening-Script
chmod u+x apache_hardening.sh
sudo ./apache_hardening.sh

```

## Hardening Steps
1. Remove Server banner version and OS details
2. Disable directory browsing
