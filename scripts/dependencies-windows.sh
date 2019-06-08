#!/bin/bash

choco upgrade chocolatey
choco install mingw
choco install cmake
choco install python3
git clone https://github.com/pypa/get-pip.git
export PATH=/c/python37:/c/python37/Scripts:/c/python37/lib/site-packages:$PATH
python --version
python ./get-pip/get-pip.py
pip --version
export TRAVIS_COMPILER=g++
export CXX=g++
export CXX_FOR_BUILD=g++
export CC=g++
export CC_FOR_BUILD=g++
pip install conan
conan --version
