cmake_minimum_required(VERSION 3.5)

###################################################################################################################################
# ОПЦИИ СБОРКИ

# пути поиска подключаемых файлов при сборке проектов
set(PROJ_INC_DIRS ${INC_DIRS} ${CMAKE_SOURCE_DIR}/project1/include ${CMAKE_SOURCE_DIR}/project1/src)
include_directories(${PROJ_INC_DIRS})


# Директории поиска библиотек
set(PROJ_LIB_DIRS ${LIB_DIRS})
link_directories(${PROJ_LIB_DIRS}) # директории поиска библиотек


# подключаем библиотеки
set(PROJ_LIBS ${LIBS})
link_libraries(${PROJ_LIBS}) 

###################################################################################################################################
# Сборка

set(SOURCES
    designer/UIDesignData.cpp
    MainForm.cpp
)

# создаем цель
add_library(ui_design STATIC ${SOURCES})

message(NOTICE "######################### UI_DESIGN STATIC LIBRARY" )

