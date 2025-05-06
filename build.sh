#!/bin/sh
zngur generate main.zng
cargo build
clang++ -std=c++2b -I. main.cpp -L target/debug/ -lpng_example
