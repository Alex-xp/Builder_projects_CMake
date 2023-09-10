# CMakeLists.txt

cmake_minimum_required(VERSION 3.5)

# Имя рабочего решения (решение содержит подключаемые проекты)
project(solution)

###################################################################################################################################
# БАЗОВЫЕ И ПЕРВООЧЕРЕДНЫЕ ОПЦИИ КОМПИЛЯТОРА

if(${WIN32}) # НА WINDOWS СОБИРАЕМ ПРОЕКТ ТОЛЬКО НА УСТАНОВЛЕННОМ MSYS2 MINGW В ДИРЕКТОРИЮ ПО УМОЛЧАНИЮ
    message(NOTICE "###### BUILD ON WINDOWS OS [WIN32 == " ${WIN32} "]")

    set(CMAKE_C_COMPILER "C:/msys64/mingw64/bin/gcc.exe")
    set(CMAKE_CXX_COMPILER "C:/msys64/mingw64/bin/g++.exe")
    set(CMAKE_INCLUDE_PATH "C:/msys64/mingw64/include")
    set(CMAKE_LIBRAY_PATH "C:/msys64/mingw64/lib")
    set(CMAKE_MAKE_PROGRAM "C:/msys64/mingw64/bin/mingw32-make.exe")

else()
    message(NOTICE "###### BUILD ON LINUX OS [LINUX == " ${LINUX} "]")
endif()

# TEST FOR ANDRION (NOT SUPPORTED IS CURRENT VERSION)
if(${ANDROID})
    message(NOTICE "###### BUILD ON ANDROID OS [ANDROID == " ${ANDROID} "]")
endif()


# ВЕРСИЯ СБОРКИ DEBUG ИЛИ RELEASE
set(_DEBUG 0)

if(${CMAKE_BUILD_TYPE} STREQUAL "Debug")
    set(_DEBUG 1)
endif()

if(${CMAKE_BUILD_TYPE} STREQUAL "DEBUG")
    set(_DEBUG 1)
endif()

set(OUTPUT_DIR ${CMAKE_BINARY_DIR})
if(${_DEBUG})
    message(NOTICE "###### [DEBUG VERSION]" )
    set(OUTPUT_DIR ${CMAKE_BINARY_DIR}/debug)
else()
    message(NOTICE "###### [RELEASE VERSION]" )
    set(OUTPUT_DIR ${CMAKE_BINARY_DIR}/release)
endif()

message(NOTICE "###### [OUTPUT DIRECTORY = " ${OUTPUT_DIR} "]" )

# устанавливаем директории компиляции проекта
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${OUTPUT_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${OUTPUT_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${OUTPUT_DIR}/bin)

# версия стандарта языка C++ для компилятора
add_compile_options(-std=c++20 )


###################################################################################################################################
# ОПЦИИ СБОРКИ

message(NOTICE "###### [SOURCE DIRECTORY = " ${CMAKE_SOURCE_DIR} "]" )

# пути поиска общих подключаемых файлов при сборке проектов (текущие, общие и сторонние библиотеки)
set(INC_DIRS ${CMAKE_SOURCE_DIR} ${CMAKE_SOURCE_DIR}/include)

# директории поиска библиотек
set(LIB_DIRS )

# подключаем библиотеки
set(LIBS )

###################################################################################################################################
# Подключаем в сборку решения проекты - сборка

# Можно подключить здесь - но лучше это делать для каждой еденицы компиляции (кому как удобнее - не принципиально)
# include_directories(${INC_DIRS})
# link_directories(${LIB_DIRS})
# link_libraries(${LIBS}) 

add_subdirectory(static_lib1)
add_subdirectory(shared_lib1)
add_subdirectory(project1)



