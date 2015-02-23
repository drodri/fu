#!/bin/bash

wget -O - http://llvm.org/apt/llvm-snapshot.gpg.key | sudo apt-key add -
sudo apt-add-repository 'deb http://llvm.org/apt/precise/ llvm-toolchain-precise-3.5 main'
sudo apt-get -qq update
sudo apt-get -qq --force-yes install clang-3.5 libc++-dev
sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.5 1
sudo rm /usr/local/clang-3.4/bin/clang++
