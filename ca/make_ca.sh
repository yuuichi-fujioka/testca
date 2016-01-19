#!/bin/bash -ex

openssl req \
    -config openssl.cnf \
    -new \
    -newkey rsa:4096 \
    -days 1825 \
    -x509 \
    -subj "/C=JP/ST=Tokyo/L=/O=Fujioka/CN=*.xip.io/emailAddress=fujioka.yuuichi@gmail.com" \
    -keyout private/cakey.pem \
    -out cacert.pem \
    -nodes
openssl x509 -inform PEM -outform DER -in cacert.pem -out cacert.der
