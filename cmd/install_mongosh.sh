#!/bin/bach

wget https://downloads.mongodb.com/compass/mongosh-2.5.7-linux-x64.tgz


# replace version with the latest available

tar -xvzf mongosh-2.5.7-linux-x64.tgz -C ~/

~/mongosh-2.5.7-linux-x64/bin/mongosh

echo 'export PATH=$HOME/mongosh-2.5.7-linux-x64/bin:$PATH' >> ~/.zshrc
source ~/.zshrc

mongosh --version
