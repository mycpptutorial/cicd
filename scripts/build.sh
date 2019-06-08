#!/bin/bash

export PATH=/c/python37:/c/python37/Scripts:/c/python37/lib/site-packages:$PATH

export TRAVIS_COMPILER=gcc
export CXX=gcc
export CXX_FOR_BUILD=gcc
export CC=gcc
export CC_FOR_BUILD=gcc

CONAN_SOURCE=$1
BUILD_FOLDER=$2

mkdir $BUILD_FOLDER
cd $BUILD_FOLDER
conan install $CONAN_SOURCE
conan build $CONAN_SOURCE
