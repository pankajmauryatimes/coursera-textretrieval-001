##
# Install Meta
# 
#   This script appears to be broken right now :(
#   Perhaps it should be run with sudo?
##

cd ~

# this might take a while
sudo apt-get update
sudo apt-get install python-software-properties

# add the ppa that contains an updated g++
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update

# this will probably take a while
sudo apt-get install g++ g++-4.8 libicu-dev git make wget

wget http://www.cmake.org/files/v3.1/cmake-3.1.1-Linux-x86_64.sh
sudo sh cmake-3.1.1-Linux-x86_64.sh --prefix=/usr/local

# clone the project
git clone https://github.com/meta-toolkit/meta.git
cd meta/

# checkout the correct branch for this course
git reset --hard v1.3.2

# set up submodules
git submodule update --init --recursive

# set up a build directory
mkdir build
cd build
cp ../config.toml .

# configure and build the project
CXX=g++-4.8 /usr/local/bin/cmake ../ -DCMAKE_BUILD_TYPE=Release
make

# run tests and confirm that everything worked
/usr/local/bin/ctest --output-on-failure