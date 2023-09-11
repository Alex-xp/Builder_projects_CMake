# PARENT_SCOPE - добавляем для установки переменных в родительской (общей) области видимости
# Этот способ служит для передачи параметров в верхнюю область видимости из функций



###################################################################################################################################
# БАЗОВЫЕ И ПЕРВООЧЕРЕДНЫЕ ОПЦИИ КОМПИЛЯТОРА
function(setBaseCompillerOptions)


    # -------------------------------------------------------------------------------------
    # настройки сборки в зависимости от ОС
    if(${WIN32}) # НА WINDOWS СОБИРАЕМ ПРОЕКТ ТОЛЬКО НА УСТАНОВЛЕННОМ MSYS2 MINGW В ДИРЕКТОРИЮ ПО УМОЛЧАНИЮ
        message(NOTICE "###### BUILD ON WINDOWS OS [WIN32 == " ${WIN32} "]")

        set(CMAKE_C_COMPILER "C:/msys64/mingw64/bin/gcc.exe" PARENT_SCOPE)
        set(CMAKE_CXX_COMPILER "C:/msys64/mingw64/bin/g++.exe" PARENT_SCOPE)
        set(CMAKE_INCLUDE_PATH "C:/msys64/mingw64/include" PARENT_SCOPE)
        set(CMAKE_LIBRAY_PATH "C:/msys64/mingw64/lib" PARENT_SCOPE)
        set(CMAKE_MAKE_PROGRAM "C:/msys64/mingw64/bin/mingw32-make.exe" PARENT_SCOPE)

    else()
        message(NOTICE "###### BUILD ON LINUX OS [LINUX == " ${LINUX} "]")
    endif()

    # TEST FOR ANDRION (NOT SUPPORTED IS CURRENT VERSION)
    if(${ANDROID})
        message(NOTICE "###### BUILD ON ANDROID OS [ANDROID == " ${ANDROID} "]")
    endif()



    # -------------------------------------------------------------------------------------
    # ВЕРСИЯ СБОРКИ DEBUG ИЛИ RELEASE
    set(_CONF_DEBUG 0)

    if(${CMAKE_BUILD_TYPE} STREQUAL "Debug")
        set(_CONF_DEBUG 1)
    endif()

    if(${CMAKE_BUILD_TYPE} STREQUAL "DEBUG")
        set(_CONF_DEBUG 1)
    endif()
    set(_DEBUG ${_CONF_DEBUG} PARENT_SCOPE)
    # особенность - мы используем _CONF_DEBUG в данной области функции и переводить её в глобальную сразу нельзя



    # -------------------------------------------------------------------------------------
    # Выходная директория
    set(OUTPUT_DIR ${CMAKE_BINARY_DIR})
    if(${_CONF_DEBUG})
        message(NOTICE "###### [DEBUG VERSION]" )
        set(OUTPUT_DIR ${CMAKE_BINARY_DIR}/debug)
    else()
        message(NOTICE "###### [RELEASE VERSION]" )
        set(OUTPUT_DIR ${CMAKE_BINARY_DIR}/release)
    endif()

    message(NOTICE "###### [OUTPUT DIRECTORY = " ${OUTPUT_DIR} "]" )

    # устанавливаем директории компиляции проекта
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${OUTPUT_DIR}/lib PARENT_SCOPE)
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${OUTPUT_DIR}/lib PARENT_SCOPE)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${OUTPUT_DIR}/bin PARENT_SCOPE)
    
endfunction(setCompillerOptions)



###################################################################################################################################
# ОПЦИИ СБОРКИ
function(setLibsSolutionOptions)
    # message(NOTICE "###### [SOURCE DIRECTORY = " ${CMAKE_SOURCE_DIR} "]" )

    # пути поиска общих подключаемых файлов при сборке проектов (текущие, общие и сторонние библиотеки)
    set(INC_DIRS ${CMAKE_SOURCE_DIR} ${CMAKE_SOURCE_DIR}/include  ${CMAKE_SOURCE_DIR}/3TH_PARTY/SFML/include PARENT_SCOPE)

    # Общие директории поиска библиотек
    set(LIB_DIRS ${CMAKE_LIBRARY_OUTPUT_DIRECTORY} ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY} ${CMAKE_RUNTIME_OUTPUT_DIRECTORY} PARENT_SCOPE)

    # Общие библиотеки
    if(${_DEBUG})
        set(LIBS sfml-system-d sfml-graphics-d sfml-window-d sfml-network-d sfml-audio-d PARENT_SCOPE)
    else()
        set(LIBS sfml-system sfml-graphic sfml-window sfml-network sfml-audio PARENT_SCOPE)
    endif()

endfunction(setLibsSolutionOptions)
