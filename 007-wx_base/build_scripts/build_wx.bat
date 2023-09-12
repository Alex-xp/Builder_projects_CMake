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

REM ***************************************************************************************
REM ПРЕДВАРИТЕЛЬНАЯ СБОРКА WX_WIDGETS DEBUG
mkdir debug
cd debug
mkdir bin
mkdir lib
cd ..

mkdir wxWidgets
cd wxWidgets
mkdir windows_debug
cd windows_debug
call cmake -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Debug  ../../../3TH_PARTY/wxWidgets
call mingw32-make -f Makefile

REM call timeout /t 4
call xcopy /s lib\gcc_x64_dll\*.a ..\..\debug\lib\*.a /Y
call xcopy /s lib\gcc_x64_dll\*.dll ..\..\debug\bin\*.dll /Y
cd ..
cd ..

REM ***************************************************************************************
REM ПРЕДВАРИТЕЛЬНАЯ СБОРКА WX_WIDGETS RELEASE

mkdir release
cd release
mkdir bin
mkdir lib
cd ..

mkdir wxWidgets
cd wxWidgets
mkdir windows_release
cd windows_release
call cmake -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release  ../../../3TH_PARTY/wxWidgets
call mingw32-make -f Makefile

REM call timeout /t 4
call xcopy /s lib\gcc_x64_dll\*.a ..\..\release\lib\*.a /Y
call xcopy /s lib\gcc_x64_dll\*.dll ..\..\release\bin\*.dll /Y
cd ..
cd ..