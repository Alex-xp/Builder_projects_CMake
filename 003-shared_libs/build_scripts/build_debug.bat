@echo off

mkdir build
cd build

call cmake -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Debug ../

call mingw32-make -f Makefile

cd ..
call build\debug\bin\program

REM pause