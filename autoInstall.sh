#! /bin/bash

SERVER_LIST=/user/krishna/multiserver.txt
PackageName="wget nano epel-release zlib-devel pcre2-devel make gcc mysql-devel postgresql-devel sqlite-devel libevent libevent-devel"

for Host in $(< $SERVER_LIST )
do
    echo "Installing package on $Host"
    ssh "${Host}"  apt-get -y install "${PackageName}"
    wget https://github.com/ossec/ossec-hids/archive/3.6.0.tar.gz
    firewall-cmd --permanent --zone=public --add-port=1514/udp --permanent
    firewall-cmd --reload
done