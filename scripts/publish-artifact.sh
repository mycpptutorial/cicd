#!/bin/bash

ORG_NAME=$1
REPO_NAME=$2
PACKAGE_NAME=$3
VERSION=$4
TAG_NAME=$5

if [ $TRAVIS_OS_NAME == windows ]; then
  source cicd/scripts/pre-build-windows.inc
fi

conan remote add $REPO_NAME https://api.bintray.com/conan/$ORG_NAME/$REPO_NAME
conan user -p $BINTRAY_PASSWORD -r $REPO_NAME $BINTRAY_USERNAME

conan export . $PACKAGE_NAME/$VERSION@$ORG_NAME/$TAG_NAME
conan install $PACKAGE_NAME/$VERSION@$ORG_NAME/$TAG_NAME --build=$PACKAGE_NAME
conan upload $PACKAGE_NAME/$VERSION@$ORG_NAME/$TAG_NAME -r $REPO_NAME --all
