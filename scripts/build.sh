#!/bin/bash

source ./cicd/scripts/pre-build-windows.inc

CONAN_SOURCE=$1
BUILD_FOLDER=$2

mkdir $BUILD_FOLDER
cd $BUILD_FOLDER
conan install $CONAN_SOURCE
conan build $CONAN_SOURCE
