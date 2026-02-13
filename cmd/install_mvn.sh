#!/bin/bach

wget https://dlcdn.apache.org/maven/maven-3/3.8.9/binaries/apache-maven-3.8.9-bin.tar.gz

tar -xvzf apache-maven-3.8.9-bin.tar.gz
mv apache-maven-3.8.9 ~/maven

echo 'export PATH=~/maven/bin:$PATH' >> ~/.zshrc
source ~/.zshrc

mvn -v
