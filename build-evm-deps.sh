 rm -rf /usr/bin/gcc
    rm -rf /usr/bin/g++
    apt install software-properties-common -y
    add-apt-repository ppa:ubuntu-toolchain-r/test
    apt-get update
    apt install gcc-10 g++-10 -y
    ln -s /usr/bin/gcc-10 /usr/bin/gcc
    ln -s /usr/bin/g++-10 /usr/bin/g++
    wget --no-check-certificate https://github.com/Kitware/CMake/releases/download/v3.30.2/cmake-3.30.2-linux-x86_64.tar.gz
    tar -xvf cmake-3.30.2-linux-x86_64.tar.gz 
    cp -rf cmake-3.30.2-linux-x86_64/* /usr/
    wget --no-check-certificate https://github.com/bitnet-io/bitnet-core/releases/download/70037/evmone.tar.gz
    tar -xvf evmone.tar.gz
    mv src-evmone-current src/evmone
    cd src/evmone
    rm -rf build
    mkdir build
    cd build
    cmake ..
    make -j6 install
echo "cd ../depends"
echo "    make -j6 HOST=x86_64-unknown-linux-gnu"

echo "apt install capnproto libcapnp-dev -y" 
echo "git clone https://github.com/c4pt00/libmultiprocess"
echo "     cd libmultiprocess/"
echo    " mkdir build"
echo    " cd build/"
echo    " cmake .."
echo    " make -j6 install"
echo "cp -rf /usr/local/lib/lib* /usr/lib/x86_64-linux-gnu/cmake/"
