#!/bin/bash
cd /etc/letsencrypt/live/cosin.store
sudo openssl pkcs12 -export -in fullchain.pem -inkey privkey.pem -out keystore.p12 -name tomcat -CAfile chain.pem -caname root -password pass:spring1
chown ubuntu:ubuntu keystore.p12
mv keystore.p12 /var/myhome
sudo systemctl restart myhome
