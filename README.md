# http://yodadb.com/


## Installing


```sh

curl -o- https://raw.githubusercontent.com/aa32555/yoda/main/yodadatabase_install_per_order_of_the_king.sh | bash

# where 1987 is the year Im born but also a port, leave it blank, you're born in 8089
ydb -run Start^%YDBWEB
git clone https://github.com/aa32555/YodaDB.com.git yodadb-cachesys
cd yodadb-cachesys
mv ./yodadb ./yodadb-mgr
cd yodadb-mgr
./home/ahmedatefuzy/.config/nvm.sh
nvm install --lts
nvm use --lts
npm install
./node_modules/@quasar/app/bin/quasar-dev

# open http://127.0.0.1:8080
# Enjoy

```



## License

See [LICENSE.md](./LICENSE.md). [coming soon]

## Copyright notice

Copyright [Yoda Database](https://yodadb.com) and `ydb` contributors. All rights reserved. The [Yoda Database](https://yodadb.com) has registered trademarks and uses trademarks.  For a list of trademarks of the [Yoda Database](https://yodadb.com), please see our [Trademark Policy](http://yodadb.com/)


![megif](https://raw.githubusercontent.com/aa32555/YodaDB.com/main/aa.gif)
