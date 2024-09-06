# http://yodadb.com/
## Installing
```sh
apt-get update
curl -o -https://raw.githubusercontent.com/aa32555/YodaDB.com/main/install.sh | bash
apt-get install npm node 
# or => nvm install --lts && nvm use --lts
#
#
#
#2)
git clone https://github.com/aa32555/YodaDB.com.git yodadb-v0
cd yodadb-v0
cd yodadb
cp -r ./r /root/.yottadb
npm install
rm quasar.conf.js
mv z.conf.js quasar.conf.js


#3)
ydb -run Start^%YDBWEB #start backend web server
./node_modules/@quasar/app/bin/quasar-dev # hack the front end
#
# open http://127.0.0.1:3255 server should be running port 8089... ip should be localhost
# p.s. this installs code-server as well (VSCode)
# to run it type code-server and open http://127.0.0.1:8080
# --7amada ... stay tuned, web sockets and termial soon  
# Enjoy 
```



## License

See [LICENSE.md](./LICENSE.md). [coming soon]

## Copyright notice

Copyright [Yoda Database](https://yodadb.com) and `ydb` contributors. All rights reserved. The [Yoda Database](https://yodadb.com) has registered trademarks and uses trademarks.  For a list of trademarks of the [Yoda Database](https://yodadb.com), please see our [Trademark Policy](http://yodadb.com/)


![megif](https://raw.githubusercontent.com/aa32555/YodaDB.com/main/aa.gif)
