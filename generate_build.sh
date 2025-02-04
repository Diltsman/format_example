#!/bin/bash
if [ ! -f .build/ ]; then
	rm -rf .build/
fi
mkdir .build
cd .build
CC=clang CXX=clang++ cmake -DCMAKE_BUILD_TYPE=Release -GNinja -DCMAKE_CXX_FLAGS="-stdlib=libc++" -DCMAKE_EXE_LINKER_FLAGS="-stdlib=libc++ -lc++abi" ..
