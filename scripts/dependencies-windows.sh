#!/bin/bash

choco upgrade chocolatey
choco install python3
git clone https://github.com/pypa/get-pip.git
export PATH=C:/Python37:$PATH
echo $PATH