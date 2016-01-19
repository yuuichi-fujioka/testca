#!/bin/bash -ex

(cd ca; ./make_ca.sh; ./install_ca.sh)
(cd site; ./make_site.sh)
(cd ca; ./sign.sh)

