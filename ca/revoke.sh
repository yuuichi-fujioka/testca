#!/bin/bash

openssl ca -config openssl.cnf -revoke $1
