#!/bin/bash

CONAN_SOURCE=$1
BUILD_FOLDER=$2

mkdir -rf $BUILD_FOLDER
mkdir $BUILD_FOLDER
cd $BUILD_FOLDER
conan install $CONAN_SOURCE
conan build $CONAN_SOURCE
