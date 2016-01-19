#!/bin/bash

openssl ca -config openssl.cnf -out ../site/cert.pem -infiles ../site/site.csr 
