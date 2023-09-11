@echo off

mkdir build
cd build

call cmake -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Debug ../
call mingw32-make -f Makefile clean

call cmake -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release ../
call mingw32-make -f Makefile clean

REM pause