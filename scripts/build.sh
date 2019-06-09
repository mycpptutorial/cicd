#!/bin/bash

export PATH=/c/python37:/c/python37/Scripts:/c/python37/lib/site-packages:$PATH

CONAN_SOURCE=$1
BUILD_FOLDER=$2

mkdir $BUILD_FOLDER
cd $BUILD_FOLDER
conan install $CONAN_SOURCE
conan build $CONAN_SOURCE
