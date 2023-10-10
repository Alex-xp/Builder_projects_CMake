cd %~dp0%..
call env.bat

REM call %ROOT_DIR%build_scripts/copy_build.bat

REM ################################################################################################
REM СБОРКА

call rm %BIN_DIR_DEBUG%\bin\program

REM СБОРКА ПРОЕКТА
cd %BIN_DIR_DEBUG%
call cmake -G "Ninja" -DCMAKE_BUILD_TYPE=Debug -DGUI=OFF %ROOT_DIR%
call ninja


cd %ROOT_DIR%
ECHO ***************************************************************************************
call %BIN_DIR_DEBUG%\bin\program

REM pause