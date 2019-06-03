#!/bin/bash

choco upgrade chocolatey
choco install python3
git clone https://github.com/pypa/get-pip.git
export PATH=/c/python37:/c/python37/Scripts:/c/python37/lib/site-packages:$PATH
python --version
python ./get-pip/get-pip.py
pip --version
pip install conan
conan --version