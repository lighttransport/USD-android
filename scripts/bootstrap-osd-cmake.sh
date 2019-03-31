#!/bin/bash

## Please edit android sdk/ndk/cmake path
ANDROID_SDK_ROOT=$HOME/Android/Sdk/
ANDROID_NDK_ROOT=$HOME/local/android-ndk-r19c
CMAKE_BIN=$ANDROID_SDK_ROOT/cmake/3.10.2.4988404/bin/cmake

rm -rf build-android-osd

# For ninja build
# -DCMAKE_MAKE_PROGRAM=$ANDROID_SDK_ROOT/cmake/3.6.4111459/bin/ninja \

## NOTE: gnustl fails to compile json.hpp : https://github.com/nlohmann/json/issues/219
$CMAKE_BIN \
-DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK_ROOT/build/cmake/android.toolchain.cmake \
-DCMAKE_INSTALL_PREFIX=`pwd`/dist \
-DANDROID_ABI=arm64-v8a \
-DANDROID_NATIVE_API_LEVEL=28 \
-DANDROID_STL=c++_static \
-DNO_TUTORIALS=On \
-DNO_EXAMPLES=On \
-DNO_REGRESSION=On \
-DNO_DOC=On \
-DNO_OMP=On \
-DNO_TBB=On \
-DNO_CUDA=On \
-DNO_OPENCL=On \
-DNO_OPENGL=On \
-DNO_TESTS=On \
-DNO_GLTESTS=On \
-DNO_GLFW=On \
-DNO_PTEX=On \
-Bbuild-android-osd -HOpenSubdiv-aarch64
