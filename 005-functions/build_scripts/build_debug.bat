@echo off

mkdir build
cd build

mkdir debug
cd debug
mkdir bin
mkdir lib
cd ..


REM ПРЕДВАРИТЕЛЬНАЯ СБОРКА SFML
mkdir sfml
cd sfml
call cmake -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Debug  ../../3TH_PARTY/SFML
call mingw32-make -f Makefile

REM call timeout /t 4
call xcopy /s lib\*.a ..\debug\lib\*.a /Y
call xcopy /s lib\*.dll ..\debug\bin\*.dll /Y
cd ..

REM СБОРКА ПРОЕКТА
call cmake -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Debug ../
call mingw32-make -f Makefile

cd ..
call build\debug\bin\program

REM pause