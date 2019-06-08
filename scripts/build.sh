#!/bin/bash

export PATH=/c/python37:/c/python37/Scripts:/c/python37/lib/site-packages:$PATH

export TRAVIS_COMPILER=g++
export CXX=g++
export CXX_FOR_BUILD=g++
export CC=gcc
export CC_FOR_BUILD=gcc

CONAN_SOURCE=$1
BUILD_FOLDER=$2

mkdir $BUILD_FOLDER
cd $BUILD_FOLDER
conan install $CONAN_SOURCE
conan build $CONAN_SOURCE
