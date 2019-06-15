#!/bin/bash

if [ $TRAVIS_OS_NAME == windows ]; then
  source cicd/scripts/pre-build-windows.inc
fi

conan remote add datetimeutil-shared-lib-conan/1.0.0@mycpptutorial/stable https://api.bintray.com/conan/mycpptutorial/datetimeutil
conan user -p $BINTRAY_PASSWORD -r datetimeutil-shared-lib-conan/1.0.0@mycpptutorial/stable $BINTRAY_USERNAME

conan export . datetimeutil-shared-lib-conan/1.0.0@mycpptutorial/stable
conan install datetimeutil-shared-lib-conan/1.0.0@mycpptutorial/stable --build=datetimeutil-shared-lib-conan
conan upload "datetimeutil-shared-lib-conan/1.0.0@mycpptutorial/stable" -r datetimeutil-shared-lib-conan/1.0.0@mycpptutorial/stable --all
