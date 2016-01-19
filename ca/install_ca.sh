#!/bin/bash

sudo cp cacert.pem /usr/share/ca-certificates/myca.crt
grep "^myca.crt" /etc/ca-certificates.conf || echo myca.crt | sudo tee -a /etc/ca-certificates.conf
sudo update-ca-certificates
