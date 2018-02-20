#!/usr/bin/bash

set -ex

git clone --depth 1 https://github.com/facebook/litho.git $HOME/litho
pushd $HOME/litho
export ANDROID_NDK_REPOSITORY=$HOME/android-ndk
export ANDROID_NDK=$HOME/android-ndk
export ANDROID_HOME=$HOME/android-sdk
export PATH=$HOME/buck/bin:$PATH
./gradlew :litho-it:testDebugUnitTest --tests "*NodeInfoTest"
popd
rm -rf $HOME/litho
