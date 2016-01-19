#!/bin/bash -ex

openssl req \
    -new \
    -subj "/C=JP/ST=Tokyo/L=/O=Fujioka/CN=*.xip.io" \
    -keyout site.pem \
    -out site.csr \
    -nodes
