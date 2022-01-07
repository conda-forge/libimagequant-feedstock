#!/bin/bash

set -ex

mkdir build
cd build

# LIB_INSTALL_DIR & CMAKE_BINARY_DIR used by upstream CMakeLists.txt
cmake \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DLIB_INSTALL_DIR:PATH=$PREFIX/lib \
    -DCMAKE_BINARY_DIR:PATH=$PREFIX/bin \
    ..

cmake --build . --config Release

cmake --install . --config Release
