@echo off

REM КОРРЕКТИРОВКА ТЕКУЩЕГО ПУТИ
SET CDIR=%~dp0%
echo CURRENT_DIR = %CDIR%
cd %CDIR%
cd ..

REM ################################################################################################
REM СБОРКА

mkdir build
cd build


mkdir release
cd release
mkdir bin
mkdir lib
cd ..

REM ПРЕДВАРИТЕЛЬНАЯ СБОРКА SFML
mkdir sfml
cd sfml
call cmake -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release  ../../3TH_PARTY/SFML
call mingw32-make -f Makefile

REM call timeout /t 4
call xcopy /s  lib\*.a ..\release\lib\*.a /Y
call xcopy /s  lib\*.dll ..\release\bin\*.dll /Y
cd ..

REM СБОРКА ПРОЕКТА
call cmake -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release ../
call mingw32-make -f Makefile

cd ..
call build\release\bin\program

REM pause