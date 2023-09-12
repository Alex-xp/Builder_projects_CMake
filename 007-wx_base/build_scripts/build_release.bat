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
mkdir release\bin
mkdir release\lib

REM КОПИЯ БИБЛИОТЕК WX_WIDGETS ДЛЯ СБОРКИ ПРОЕКТА

REM call timeout /t 4
call xcopy /s wxWidgets\windows_release\lib\gcc_x64_dll\*.a release\lib\*.a /Y
call xcopy /s wxWidgets\windows_release\lib\gcc_x64_dll\*.dll release\bin\*.dll /Y

REM СБОРКА ПРОЕКТА
call cmake -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release ../
call mingw32-make -f Makefile

cd ..
call build\release\bin\program

REM pause