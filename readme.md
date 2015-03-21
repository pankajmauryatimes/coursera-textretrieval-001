# Text Retrieval and Search Engines

Companion resources for [Text Retrieval and Search Engines](https://class.coursera.org/textretrieval-001)

## Setting up a C++ environment

I've put together a vagrant project that will help you get up and running quickly using Vagrant. To get started, follow these steps.

1. Install git
2. Install Virtualbox
3. Install Vagrant
4. Clone this repo: 

```
git clone https://github.com/mrdrozdov/coursera-textretrieval-001.git
```

5. Run Vagrant:

```
cd coursera-textretrieval-001/vagrant-cpp
vagrant up
```

6. SSH into the Vagrant managed Virtual Machine:

```
vagrant ssh
```

7. Check that C++ works

```
cd src/vagrant-cpp/hello-world
make
./hello
```

If you see "Hello world!", then you are all set!