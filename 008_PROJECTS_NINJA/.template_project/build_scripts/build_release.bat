cd %~dp0%..
call env.bat

REM call %ROOT_DIR%build_scripts/copy_build.bat

REM ################################################################################################
REM СБОРКА

call rm %BIN_DIR_RELEASE%\bin\program

REM СБОРКА ПРОЕКТА
cd %BIN_DIR_RELEASE%
call cmake -G "Ninja" -DCMAKE_BUILD_TYPE=Release -DGUI=ON %ROOT_DIR%
call ninja

REM ################################################################################################
REM ЗАПУСК

cd %ROOT_DIR%
ECHO ***************************************************************************************
call %BIN_DIR_RELEASE%\bin\program

REM pause
