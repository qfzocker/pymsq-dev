#!/bin/bash
set -e

# install R from source
echo " * Running install_r_source.sh ..."
/qfzocker_scripts/install_r_source.sh

# install base apps for FB-ZWS
echo " * Running install_qfz_base.sh"
/qfzocker_scripts/install_qfz_base.sh

# install specific packages for pymsq
/usr/bin/pip3 install pandas==1.4.3
/usr/bin/pip3 install numpy==1.20.3
/usr/bin/pip3 install numba==0.56.0
/usr/bin/pip3 install PyMSQ