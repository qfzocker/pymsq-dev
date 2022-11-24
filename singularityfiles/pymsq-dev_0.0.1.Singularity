Bootstrap: docker
From: ubuntu:jammy


%files
   qfzocker_scripts /root

%environment
   export R_VERSION=4.2.2
   export R_HOME=/usr/local/lib/R
   export CRAN=https://stat.ethz.ch/CRAN
   export TZ=Europe/Berlin
   export PATH=${PATH}:/opt/openjdk/jdk8u222-b10/bin:/qualstorzws01/data_projekte/linuxBin
   export PYTHONPATH='/qualstorzws01/data_projekte/qualitas_python_packages'

%post
   mv /root/qfzocker_scripts /
   /qfzocker_scripts/install_pymsq_dev.sh


%labels
    Vendor: "qfzocker Project"
    Author: "FB-ZWS Qualitas AG <fbzws.qualitasag@gmail.com>"
    Project: "gec_base"
    Source: "https://github.com/qfzocker/pymsq-dev"
    Version: v0.0.1


%environment
   export LC_ALL=C.UTF-8

