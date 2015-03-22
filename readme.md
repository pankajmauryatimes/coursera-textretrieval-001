# Text Retrieval and Search Engines

Companion resources for [Text Retrieval and Search Engines](https://class.coursera.org/textretrieval-001)

## Environment Setup

I've put together a project that will help you get up and running quickly using Vagrant. To get started, follow these steps.

I. Install git, VirtualBox, and Vagrant

II. Clone this repo

```
git clone https://github.com/mrdrozdov/coursera-textretrieval-001.git
```

III. Run Vagrant

```
cd coursera-textretrieval-001/vagrant-cpp
vagrant up
```

IV. SSH into the Vagrant managed Virtual Machine

```
vagrant ssh
```

V. C++ Hello World

```
cd /vagrant/vagrant-cpp/hello-world
make
./hello
```

V. Install MeTA

```
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
```

### Vagrant Commands

- `vagrant up` - Start the VM
- `vagrant destroy` - Destroy and deallocate the VM
- `vagrant ssh` - SSH into your running VM
