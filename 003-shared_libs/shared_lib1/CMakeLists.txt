# CMakeLists.txt

cmake_minimum_required(VERSION 3.5)

###################################################################################################################################
# ВЕРСИЯ СБОРКИ DEBUG ИЛИ RELEASE (особенности для данного проекта)

set(OUTPUT_DIR ${CMAKE_BINARY_DIR})
if(${_DEBUG})
    # message(NOTICE "###### [DEBUG VERSION]" )
else()
    # message(NOTICE "###### [RELEASE VERSION]" )
endif()


###################################################################################################################################
# ОПЦИИ СБОРКИ



# пути поиска подключаемых файлов при сборке проектов
set(PROJ_INC_DIRS ${CMAKE_SOURCE_DIR}/shared_lib1/include ${CMAKE_SOURCE_DIR}/shared_lib1/src)
include_directories(${PROJ_INC_DIRS})

message(NOTICE "###### [PROJECT1 SOURCE DIRECTORYES = " ${PROJ_INC_DIRS} "]" )

# link_directories(${PROJ_LIB_DIRS}) # директории поиска библиотек
# link_libraries(${PROJ_LIBS}) # подключаем библиотеки


###################################################################################################################################
# Сборка

set(SOURCES
    main_sh_lib.cpp
)

# создаем цель
add_library(shared_lib1 SHARED ${SOURCES})


