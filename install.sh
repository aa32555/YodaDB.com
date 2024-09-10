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
         echo "~~this installs the precompiled C files i.e. YottaDb from the AA32555@Github YodaDB repo."
        #
        #       
        apt-get update
        apt-get install
        apt-get install -y git
        apt-get install -y wget
        apt-get install -y gnupg
        apt-get install -y tzdata 
        apt-get install -y pkg-config 
        apt-get install -y lsof
        apt-get install -y procps
        apt-get install -y cmake 
        apt-get install -y clang
        apt-get install -y llvm
        apt-get install -y lld
        apt-get install -y make
        apt-get install -y gcc
        apt-get install -y git
        apt-get install -y curl
        apt-get install -y tcsh
        apt-get install -y libconfig-dev
        apt-get install -y libelf-dev
        apt-get install -y libicu-dev
        apt-get install -y libncurses-dev
        apt-get install -y libreadline-dev
        apt-get install -y binutils
        apt-get install -y ca-certificates
        apt-get install -y libicu-dev
        apt-get install -y libasound2
        apt-get install -y libnss3-dev
        apt-get install -y libgdk-pixbuf2.0-dev
        apt-get install -y libgtk-3-dev
        apt-get install -y ibxss-dev
        apt-get install -y libgconf-2-4
        apt-get install -y libatk1.0-0
        apt-get install -y libatk-bridge2.0-0
        apt-get install -y libgdk-pixbuf2.0-0
        apt-get install -y libgtk-3-0
        apt-get install -y build-essential
        apt-get install -y bison
        apt-get install -y flex
        apt-get install -y xxd
        apt-get install -y libreadline-dev
        apt-get install -y libssl-dev
        apt-get install -y libconfig-dev
        apt-get install -y libcmocka-dev
        apt-get install -y default-jdk
        apt-get install -y expect
        apt-get install -y golang-go
        apt-get install -y curl
        apt-get install -y libgcrypt20-dev
        apt-get install -y gawk
        apt-get install -y nano
        apt-get install -y htop
        #mkdir -p /tmp/tmp && cd /tmp/tmp
        #curl -o- https://raw.githubusercontent.com/aa32555/YDB/master/sr_unix/ydbinstall.sh | bash
        #chmod +x ydbinstall.sh
        #./ydbinstall.sh --utf8 default --verbose --octo --from-source https://github.com/aa32555/YDB.git --overwrite-existing  
         mkdir -p /tmp/tmp
        wget -o- https://github.com/user-attachments/files/16651027/YDB-r2.00.tar.gz
        tar -xvf YDB-r2.00.tar.gz
        mv YDB-r2.00 ydb
        cd ydb
        mkdir build
        cd build
        export CC=/usr/bin/clang
        cmake -D CMAKE_LINKER:PATH=/usr/bin/ld.lld ..
        make -j $(getconf _NPROCESSORS_ONLN)
        make install
        echo "=================================================================================================================================="
         echo "YodaDB(YottaDB, let's be serious) Installer..."
         echo "Made by: Ahmed Khaled Abdelrazek"
         echo "حمد خالد محمد عبد الرازق حفيد القبطان البكري الله يمسيه بالخير"
         echo "www.YodaDb.com"
         echo "github.com/aa32555" 
