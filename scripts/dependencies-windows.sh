#!/bin/bash

choco upgrade chocolatey
choco install python3
git clone https://github.com/pypa/get-pip.git
C:/Python37/python ./get-pip/get-pip.py
export PATH=c:/python37:c:/python37/Scripts:$PATH
C:/Python37/Scripts/pip install conan