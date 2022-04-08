#! /bin/bash

SERVER_LIST=serverlist.txt
PackageName="wget epel-release zlib-devel pcre2-devel make gcc mysql-devel postgresql-devel sqlite-devel libevent libevent-devel systemd-devel"

for Host in $(< $SERVER_LIST )
do
    echo "Installing package on $Host"
    ssh "${Host}"  yum -y install "${PackageName}"
    wget https://github.com/ossec/ossec-hids/archive/refs/tags/3.7.0.tar.gz
    tar -xzvf 3.7.0.tar.gz
done
