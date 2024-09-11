

# 👀 [http://yodadb.com](http://www.yodadb.com)

## What is it gui + backend library ...like AA's TKEDGE ?
Open source Intersystems replacement (single insane mans effort, i also work on templeOS...on sundays)

![megif](https://raw.githubusercontent.com/aa32555/YodaDB.com/main/osiris/ezgif.com-animated-gif-maker.gif)


## tell me more I hate cos, sin, tan like why is tan sin/cos and wtf is object oriented programming ?
 - Globls editor (done)
 - Routine editor (done)
 - process monitor (done)
 - sql explorer "thank you I doubt and Bhaskar" (done)
 - gde that makes sense (didnt start yet, im sorry vue dude trapped in I doubt's closet) 
 - terminal ( eat your heart out intersystems ) (80% done)
 - interactive documentation (25% done)
 - interface for ceating and controlling startup processes ( like ZSTU 0% done)
 - themes and colors in a template that can be exported, like the KSA theme of hhtp://www.yodadb.com
 - interface for creating SPA web apps [Backend library built on vue and quasar (see the youtube video @asolok)] (0% done)
 - complete windows m-coder to linux m-coder interface ( 0% done )
    - windows like file explorer
    - drag and drop files, browse folders, ssh, doom, etc.
 - interactive installer similar to TKAADOWNLOAD UTILS ( 0% done )
 - util backend commands to replace the need to know  ( 0% done )
    - linux commands like touch, nano, mkdir, etc.  ( 0% done )
    - yottadbs and GT.M's $zd functions, and mismatched functions to cater obviously to the newly fired COS coder  ( 0% done )
- using something like easglejs to make something like learnyouhaskellfor a good day book and site. but obviously for M  ( 0% done )
- Maybe an electron app, and an installer based on scenarios  ( 0% done )
- the 3 versions of the websserver, similar to quaar create command. i.e generated on commad  ( 0% done )  ( 0% done )
- videos, songs, and educational material providered from yodadb.com. The avaerage Insider-Trading, Solitarily confined, probably black, prisoner can benifit from, without threatening the wardens quota  ( 0% done )
- example apps, ERB,EMR,Front-End heavy JSON based, and random apps, with a market being shared on yodadb.com but residing on github.com/aa32555  ( 0% done )
- apps to take advantage of web sockets, such as mIRC  ( 0% done )
- build on something like npm ( with different functions with html documentation, etc.)  ( 0% done )
- documentations and examples for the different backend libraries I have already build, like the vue/grphql/somethingnew thing i created  ( 69% done )
- more to come soon. 

## How to Install 
  * Server:
      * 1-Script:
```sh
      curl  https://raw.githubusercontent.com/aa32555/YodaDB.com/main/install.sh > install.sh
      chmod +x install.sh
      ./install.sh
```
   * or 1-manual:
```bash
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
        mkdir -p /tmp/tmp && cd /tmp/tmp
        git clone https://github.com/aa32555/YDB.git YDB
        chmod +x ./YDB/master/sr_unix/ydbinstall.sh
        ./YDB/ydbinstall.sh --utf8 default --verbose --octo --overwrite-existing 
        ydb -r %XCMD 'W # W "YodaDB Installer..."_$c(13,10)_"Made by: Ahmed Khaled Abdelrazek"
        ==========================================================="
```


  * 2 - update the startup shell file ~/.bashrc wuth the following, 
     assuming you want to auto start the server at port 3255

```bash
      # replace /root/ydbcom/yodadb/r with your path to r  
      export ydb_routines=`ydb -run %XCMD 'W $P($P($ZRO,"(",1,2),")")_" "_"/root/ydbcom/yodadb/r"_")"_$P($ZRO,")",2,$L($ZRO,")"))'` 
      # needed for the web %SS
      # put this in the begining of the routine to see the details  as well
      # this is for future startup routinfs ...se _YDBWEB.,m for details
      export ydb_zinterrupt="I $$JOBEXAM^%YDBWEBZU($ZPOSITION)"
      # replace 3255 with whatever port, default is 8089
      ydb -run "Start^%YDBWEB 3255"
      ydb -run "Check^%YDBWEB" > yodadb-webserver-startup.txt
```

 * Browser:

 ```bash       
            # install node version manager nvm so we can have different everything node, npm, life, u know...
            wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
            # restart your shell-- ( or just reboot if you are a mac user)
            nvm install --lts
            nvm use --lts
            # clone to repo
            git clone rhttps://www.github.com/aa325555/YodaDB.com ydbcom 
            cd ydbcom/yodadb
            npm install
            ./node_modules/@quasar/app/bon/quasar-dev # to develop, etc.
            # read more at quasar.dev
 ```

## License

open source, [but details coming soon]

## Copyright notice
(see above)
Copyright [Yoda Database](https://yodadb.com) and `ydb` contributors. All rights reserved. The [Yoda Database](https://yodadb.com) has registered trademarks and uses trademarks.  For a list of trademarks of the [Yoda Database](https://yodadb.com), please see our [Trademark Policy](http://yodadb.com/)


## Random server connection info... I'm born in 8089 
![megifabc](https://raw.githubusercontent.com/aa32555/YodaDB.com/main/osiris/connection-details-ksa-kgb-fbi-kris-swiatek-hiral-ghandi-angel-cartel-tatto-hand.png)
