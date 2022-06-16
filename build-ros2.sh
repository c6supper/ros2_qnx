#!/bin/bash

set -e
trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG
start=$(date +%s.%N)

build() {

    if [ "${CPU}" == "aarch64" ]; then
        CPUVARDIR=aarch64le
        CPUVAR=aarch64le
    elif [ "${CPU}" == "x86_64" ]; then
        CPUVARDIR=x86_64
        CPUVAR=x86_64
    else
        echo "Invalid architecture. Exiting..."
        exit 1
    fi

    echo "CPU set to ${CPUVAR}"
    echo "CPUVARDIR set to ${CPUVARDIR}"
    export CPUVARDIR CPUVAR
    export ARCH=${CPU}

    cd ${PWD}/build/${CPUVAR}/yaml_cpp_vendor/yaml_cpp-prefix/src/yaml_cpp && git reset --hard && cd -
    cd ${PWD}/build/${CPUVAR}/apr_vendor/apr-prefix/src/apr && svn cleanup && cd -
    cd ${PWD}/build/${CPUVAR}/numpy_vendor/numpy-prefix/src/numpy && git reset --hard && cd -
    cd ${PWD}/build/${CPUVAR}/netifaces_vendor/netifaces-prefix/src/netifaces && git reset --hard && cd -

    colcon build --merge-install --cmake-force-configure \
        --parallel-workers 16 \
        --build-base=build/${CPUVARDIR} \
        --install-base=install/${CPUVARDIR} \
        --cmake-args \
        -DCMAKE_TOOLCHAIN_FILE="${PWD}/platform/qnx.nto.toolchain.cmake" \
        -DBUILD_TESTING:BOOL="OFF" \
        -DCMAKE_BUILD_TYPE="Release" \
        -DTHIRDPARTY=FORCE \
        -DCMAKE_VERBOSE_MAKEFILE=ON \
        -DPYTHON_INCLUDE_DIR="${QNX_TARGET}/usr/include/python3.8" \
        -DPYTHON_LIBRARY="${QNX_TARGET}/${CPUVAR}/usr/lib/libpython3.8.a" \
        --no-warn-unused-cli
}

# Set this variable according to the path of package on target
ROS2_PACKAGE_TARGET_INSTALL_PATH=/opt/ros/${ROS2DIST}

if [ ! -d "${QNX_TARGET}" ]; then
    echo "QNX_TARGET is not set. Exiting..."
    exit 1
fi

CPUS=("aarch64" "x86_64")
if [ -z "$CPU" ]; then
    for CPU in ${CPUS[@]}; do
        build
    done
elif [ $CPU == "x86_64" ] || [ $CPU == "aarch64" ]; then
    build
else
    echo "invalid $CPU please set arch to one of the following x86_64, armv7, or aarch64 or unset arch to build all platforms"
    exit 1
fi

duration=$(echo "$(date +%s.%N) - $start" | bc)
execution_time=$(printf "%.2f seconds" $duration)
echo "Build Successful. Build time: $execution_time"
exit 0
