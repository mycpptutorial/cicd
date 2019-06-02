#!/bin/bash

choco upgrade chocolatey
choco install python3
git clone https://github.com/pypa/get-pip.git
export PATH=/c/Python37:/c/Python37/Scripts:$PATH
python --version
python ./get-pip/get-pip.py
pip --version
pip install conan