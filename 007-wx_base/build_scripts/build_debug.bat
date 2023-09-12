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

mkdir debug
mkdir debug\bin
mkdir debug\lib

REM КОПИЯ БИБЛИОТЕК WX_WIDGETS ДЛЯ СБОРКИ ПРОЕКТА

REM call timeout /t 4
call xcopy /s wxWidgets\windows_debug\lib\gcc_x64_dll\*.a debug\lib\*.a /Y
call xcopy /s wxWidgets\windows_debug\lib\gcc_x64_dll\*.dll debug\bin\*.dll /Y

REM СБОРКА ПРОЕКТА
call cmake -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Debug ../
call mingw32-make -f Makefile

cd ..
call build\debug\bin\program

REM pause