#!/bin/bash

choco upgrade chocolatey
choco install gcc
choco install cmake
choco install python3
choco install pip
set PATH=c:\python37\Scripts;%PATH%
pip.exe install conan