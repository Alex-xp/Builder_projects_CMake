@ECHO OFF

REM ВНИМАНИЕ!!! ПЕРЕД ЗАПУСКОМ УСТАНОВИТЕ БАЗОВЫЙ ПАКЕТ MSYS2 https://www.msys2.org/
REM ДАЛЕЕ В WONDOWS ПЕРЕЙДЕМ НА MSYS2 И ЕГО ПАКЕТЫ



REM ОБЩЕЕ ДЛЯ УСТАНОВКИ СИСТЕМЫ СБОРКИ
call bash -l -c "pacman -Syu"
call bash -l -c "pacman -Su"
call bash -l -c "pacman -S mingw-w64-x86_64-toolchain base-devel"
call bash -l -c "pacman -S mingw-w64-x86_64-cmake mingw-w64-x86_64-extra-cmake-modules cmake mingw-w64-x86_64-cmake-gui mingw-w64-x86_64-iconv mingw-w64-x86_64-libiconv libiconv-devel mingw-w64-x86_64-boost mingw-w64-x86_64-python-pip"
call bash -l -c "pacman -S ninja mingw-w64-x86_64-ninja mingw-w64-x86_64-cninja mingw-w64-x86_64-gn"

pause

