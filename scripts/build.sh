#!/bin/bash

if [ $TRAVIS_OS_NAME == windows ]; then
  source ./cicd/scripts/pre-build-windows.inc
fi

CONAN_SOURCE=$1
BUILD_FOLDER=$2

mkdir $BUILD_FOLDER
cd $BUILD_FOLDER
conan install $CONAN_SOURCE
conan build $CONAN_SOURCE
