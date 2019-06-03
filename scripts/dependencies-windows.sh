#!/bin/bash

choco upgrade chocolatey
choco install gcc
choco install cmake
choco install python3
git clone https://github.com/pypa/get-pip.git
export PATH=/c/python37:/c/python37/Scripts:/c/python37/lib/site-packages:$PATH
python --version
python ./get-pip/get-pip.py
pip --version
export TRAVIS_COMPILER=gcc
export CXX=gcc
export CXX_FOR_BUILD=gcc
export CC=gcc
export CC_FOR_BUILD=gcc
pip install conan
conan --version