#!/bin/bash -ex

openssl req \
    -config ../ca/openssl.cnf \
    -new \
    -subj "/C=JP/ST=Tokyo/L=/O=Fujioka/CN=*.xip.io" \
    -keyout site.key \
    -out site.csr \
    -nodes
