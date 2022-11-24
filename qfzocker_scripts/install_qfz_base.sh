#!/bin/bash
set -e

## Packages from QuagZWS-Singularity
apt-get update \
  && apt-get install -y --no-install-recommends \
    software-properties-common \
    build-essential \
    xserver-xorg-dev \
    freeglut3 \
    freeglut3-dev \
    libopenmpi-dev \
    openmpi-bin \
    openmpi-common \
    openssh-client \
    openssh-server \
    libssh-dev \
    libgit2-dev \
    libssl-dev \
    libxml2-dev \
    libfreetype6-dev \
    libmagick++-dev \
    libcurl4-openssl-dev \
    libharfbuzz-dev \
    libfribidi-dev \
    libmariadb-dev \
    libmariadb-dev-compat \
    libudunits2-dev \
    ftp \
    screen \
    curl \
    man \
    man-db \
    vim \
    less \
    locales \
    time \
    rsync \
    gawk \
    sudo \
    tzdata \
    git \
    ssmtp \
    mailutils \
    cargo \
    dos2unix \
    doxygen \
    wget \
    sshpass \
    htop \
    nano \
    bc \
    python2 \
    python3-pip \
    pandoc \
    gnuplot \
    metis \
    perl \
    cmake

## unminimize to get man-pages
yes | unminimize

## upgrade complete system installed so far
apt-get update \
  && apt-get upgrade -y

## clean up unneeded packages
apt-get autoremove \
  && apt-get autoclean -y


## install OpenJDK 8 (LTS) from https://adoptopenjdk.net
curl -sSL "https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jdk_x64_linux_hotspot_11.0.13_8.tar.gz" > openjdk11.tar.gz
mkdir -p /opt/openjdk
tar -C /opt/openjdk -xf openjdk11.tar.gz
rm -f openjdk11.tar.gz

## py3 packages
/usr/bin/pip3 install pandas
/usr/bin/pip3 install numpy
/usr/bin/pip3 install scipy
/usr/bin/pip3 install xlrd
/usr/bin/pip3 install openpyxl
/usr/bin/pip3 install sympy
/usr/bin/pip3 install matplotlib
/usr/bin/pip3 install seaborn
/usr/bin/pip3 install numba

