@echo off

mkdir build
cd build

mkdir release
cd release
mkdir bin
mkdir lib
cd ..

call cmake -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release ../

call mingw32-make -f Makefile

cd ..
call build\release\bin\program

REM pause