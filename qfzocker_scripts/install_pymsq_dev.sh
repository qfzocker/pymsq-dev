#!/bin/bash
set -e

# install R from source
echo " * Running install_r_source.sh ..."
/qfzocker_scripts/install_r_source.sh

# install base apps for FB-ZWS
echo " * Running install_qfz_base.sh ..."
/qfzocker_scripts/install_qfz_base.sh

# install specific packages for pymsq
echo " * Install PyMSQ ..."
/usr/bin/pip3 install PyMSQ
