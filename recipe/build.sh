#!/bin/bash
mkdir build
cd build

cmake ../ \
    -DNUMPY_INCLUDES=$PREFIX/numpy/core/include \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DBUILD_EXAMPLE=OFF \
    -DBINDER_MATLAB=OFF \
    -DMatlab_ezc3d_INSTALL_DIR=$PREFIX/MATLAB \
    -DOctave_ezc3d_INSTALL_DIR=$PREFIX/Octave \
    -DCMAKE_PREFIX_PATH=$PREFIX \
    -DPython_EXECUTABLE=$PREFIX/bin/python \
    -DPython3_EXECUTABLE=$PREFIX/bin/python \
    -DCMAKE_BUILD_TYPE=Release \
    -D$backend_name_in_build=ON

make -j $CPU_COUNT
make install
