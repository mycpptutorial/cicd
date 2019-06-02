#!/bin/bash

choco upgrade chocolatey
choco install python3
dir C:/Python37
export PATH=C:/Python37:$PATH
python --version