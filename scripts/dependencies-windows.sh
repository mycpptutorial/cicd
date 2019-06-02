#!/bin/bash

choco upgrade chocolatey
choco install python3
git clone https://github.com/pypa/get-pip.git
C:/Python37/python ./get-pip/get-pip.py
C:/Python37/Scripts/pip install conan