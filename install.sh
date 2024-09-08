#!/bin/bash
       
         # must be run as root ! Ahmed Khaled Abdelrazek
         # yodadb.com's automatic install script.
         # ... still work in progress, after dominos 
         echo "Made by: Ahmed Khaled Abdelrazek"
         echo "حمد خالد محمد عبد الرازق حفيد القبطان البكري الله يمسيه بالخير"
         echo "www.YodaDb.com"
         echo "github.com/aa32555" 
         echo "=================================================="
         echo "must be run as root"
         echo "this installs the server database GT.M...YottaDB"
         echo "=================================================="
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
         ./ydbinstall.sh --verbose --utf8 --octo --overwrite-existing
         echo "=================================================================================================================================="
         echo " # replace /root/ydbcom/yodadb/r with your path to r"
         echo "     export ydb_routines=`ydb -run %XCMD 'W $P($P($ZRO,\"(\",1,2),\")\")_\" \"_\"\/root\/ydbcom\/yodadb\/r\"_\")\"_$P($ZRO,\")\",2,$L($ZRO,\")\"))'`" 
         echo " # needed for the web %SS"
         echo " # put this in the begining of the routine to see the details  as well"
         echo " # this is for future startup routinfs ...se _YDBWEB.,m for details"
         echo "     export ydb_zinterrupt=\"I $$JOBEXAM^%YDBWEBZU($ZPOSITION)\""
         echo " # replace 5012 with whatever port, default is 8089"
         echo "ydb -run 'Start^%YDBWEB' 5012"
         echo "ydb -run 'Check^%YDBWEB' >  `ydb -run %XCMD 'W +$H_".%YDBWEBLOG.txt"'`"
         echo "=================================================================================================================================="
         echo "Made by: Ahmed Khaled Abdelrazek"
         echo "حمد خالد محمد عبد الرازق حفيد القبطان البكري الله يمسيه بالخير"
         echo "www.YodaDb.com"
         echo "github.com/aa32555" 
