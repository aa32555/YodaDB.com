#!/bin/bash
# must be run as root ! Ahmed Khaled Abdelrazek
# yodadb.com's automatic install script.
# ... still work in progress, after dominos 
 echo "Made by: Ahmed Khaled Abdelrazek"
 echo "حمد خالد محمد عبد الرازق حفيد القبطان البكري الله يمسيه بالخير"
 echo "www.YodaDb.com"
 echo "github.com/aa32555" 
 apt-get update
 apt-get install -yq git wget gnupg
 apt-get -y install tzdata pkg-config lsof procps
 apt-get install -y git wget nodejs npm binutils libicu-dev libasound2
 apt-get install -y libnss3-dev libgdk-pixbuf2.0-dev libgtk-3-dev libxss-dev
 apt-get install -y libgconf-2-4 libatk1.0-0 libatk-bridge2.0-0 libgdk-pixbuf2.0-0 libgtk-3-0 
 apt-get install -y  build-essential cmake bison flex xxd libreadline-dev libssl-dev libconfig-dev
 apt-get install -y libcmocka-dev
 apt-get install -y default-jdk expect golang-go curl
 apt-get install gawk
 apt-get install nodejs npm
 apt install libgcrypt20-dev
 mkdir -p /tmp/tmp && cd /tmp/tmp
 wget -o- https://download.yottadb.com/ydbinstall.sh && chmod +x ydbinstall.sh
 ./ydbinstall.sh --verbose --utf8 --octo
 mkdir -p /root/.yottadb/yodadbdotcom && cd /root/.yottadb/yodadbdotcom
 git clone https://www.github.com/aa32555/YodaDB.com.git ydb
 cd ydb
 npm install
 ./node_modules/@quasar/app/bin/quasar-dev
