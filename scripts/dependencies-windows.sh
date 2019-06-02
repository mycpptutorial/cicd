#!/bin/bash

choco upgrade chocolatey
choco install gcc
choco install cmake
choco install python3
git clone https://github.com/pypa/get-pip.git
python ./get-pip/get-pip.py