BUILD_DIR=build-tbb-x64

rm -rf $BUILD_DIR

INSTALL_DIR=`pwd`/dist-x64

# For ninja build
# -DCMAKE_MAKE_PROGRAM=$ANDROID_SDK_ROOT/cmake/3.6.4111459/bin/ninja \

cmake \
  -DCMAKE_BUILD_TYPE=RelWithDebInfo \
  -DCMAKE_INSTALL_PREFIX=${INSTALL_DIR} \
  -DTBB_BUILD_TESTS=Off \
  -B${BUILD_DIR} -Htbb-aarch64
