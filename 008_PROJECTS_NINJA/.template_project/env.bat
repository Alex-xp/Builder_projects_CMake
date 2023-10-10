@ECHO OFF

SET ROOT_DIR=%~dp0


SET BIN_DIR=%ROOT_DIR%bin
SET BIN_DIR_DEBUG=%BIN_DIR%\debug
SET BIN_DIR_RELEASE=%BIN_DIR%\release


mkdir %BIN_DIR_DEBUG%
mkdir %BIN_DIR_DEBUG%\bin
mkdir %BIN_DIR_DEBUG%\lib

mkdir %BIN_DIR_RELEASE%
mkdir %BIN_DIR_RELEASE%\bin
mkdir %BIN_DIR_RELEASE%\lib

REM ################################################################################################
REM СОЗДАЕМ ОСНОВНЫЕ ДИРЕКТОРИИ ПРИ ИХ ОТСУТСТВИИ


REM ################################################################################################
REM СОЗДАЕМ ОСНОВНУЮ ДИРЕКТОРИЮ СБОРКИ
mkdir %BIN_DIR%


REM ################################################################################################
REM СОЗДАЕМ ДИРЕКТОРИИ ПОДВЕРСИЙ СБОРКИ

mkdir %BIN_DIR_DEBUG%
mkdir %BIN_DIR_DEBUG%\bin
mkdir %BIN_DIR_DEBUG%\lib

mkdir %BIN_DIR_RELEASE%
mkdir %BIN_DIR_RELEASE%\bin
mkdir %BIN_DIR_RELEASE%\lib

 

