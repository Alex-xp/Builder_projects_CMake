# Builder_projects_CMake
Примеры настроек CMake для сборки проектов


## Введение

Проект служит для целей найти лучшый способ создания сборок на CMake.

Особенность проекта в том, что сборки можно писать на любом редакторе кода.
В частности для текущих сборок применяется VSCode с расширением Cpp без дополнительных настроек.

Так же конечной целью служит сборка проектов с участием разных разработчиков частей одного решения.

## Что потребуется для сборки проекта

**WINDOWS**

1. MSYS2 - https://www.msys2.org/ (все операции по настройки компилятора выполнять из консоли ``C:/msys64/msys2.exe`` с командой ``pacman``)
2. Обновить репозитории ``pacman -Syu`` с перезапуском консоли и повторением ``pacman -Syu``
3. Набор компиляторов ``pacman -S mingw-w64-x86_64-toolchain base-devel``
4. Установим CMake ``pacman -S mingw-w64-x86_64-cmake mingw-w64-x86_64-extra-cmake-modules cmake``
5. Можно добавить SFML, для установки зависимостей (так проще компилировать последнюю версию) ``pacman -S mingw64/mingw-w64-x86_64-sfml``
6. Добавим пути MSYS2 в системную переменную ``PATH`` ``C:\msys64\mingw64;C:\msys64\mingw64\bin;C:\msys64\usr\bin``
7. Устанавливаем VSCode и расширение Cpp

ГОТОВО

**LINUX И POSIX**

В разработке, но код CMake ориентирован на сборку в данных системах (на рабочих компах сборка идет хорошо, но скрипты в данном проекте пока не дописаны)


## Краткое описание

- **000-small_project** - минимальный проект для более развернутого запуска единичной сборки
- **001-solution** - решения и проекты внутри. Для понятия сборки одного решения из нескольких проектов (пока без упорядочивания сборочных единиц)
- **002-static_libs** - добавляем статическую библиотеку в решение (пока без упорядочивания сборочных единиц)
- **003-shared_libs** - добавляем динамическую библиотеку в решение (пока без упорядочивания сборочных единиц)
- **004-add_sfml** - Пример сборки решения с применением сторонних библиотек на CMake (начинаем привыкать к порядку внутри сборочных единиц)
- **005-functions** - Навели порядок в решении воспользовавшись функциями и отделив части описания
- **006-many-developers** - каждому проекту свои настройки для разработчика. Разделяем общее решение по разработчикам.
- **007-wx_base** - более сложные зависимости в виде wxWidgets и более чистая сборка.


## ЗАКЛЮЧЕНИЕ

Это не документация и не парнацея для сборок. Это просто упрощение понятий CMake и проектов нацеленных на сборку с ним.

Я не претендую на лучшее решение сборок при помощи CMake. 
Даже скажу больше - сборка должна настраиваться на особенности определенной организации и особенности программистов.

Если на данное описание посмотрят как на базу в освоении сборок начинающие сборщики - я добился своей цели.
С опытом ваши сборки будут улучшаться оттачивая правильность скриптов и понятий.

По большей части - этот проект служит базой для моего портфолио (к сожалению свои закрытые проекты я выложить не могу - это профессианально не этично).


