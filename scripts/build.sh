#!/bin/bash

ls cicd

# if [ $TRAVIS_OS_NAME == windows ]; then
#   cat ./cicd/scripts/pre-build-windows.inc
#   source ./cicd/scripts/pre-build-windows.inc
# fi

CONAN_SOURCE=$1
BUILD_FOLDER=$2

mkdir $BUILD_FOLDER
cd $BUILD_FOLDER
conan install $CONAN_SOURCE
conan build $CONAN_SOURCE
