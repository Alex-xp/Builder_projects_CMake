cmake_minimum_required(VERSION 3.5)



###################################################################################################################################
# ОПЦИИ СБОРКИ

# пути поиска подключаемых файлов при сборке проектов
set(PROJ_INC_DIRS ${INC_DIRS} ${CMAKE_SOURCE_DIR}/project1/include ${CMAKE_SOURCE_DIR}/project1/src)
set(PROJ_INC_DIRS ${PROJ_INC_DIRS} ${CMAKE_SOURCE_DIR}/ui_desig) # !!! - ЭТО ПОДКЛЮЧЕНИЕ ПУТЕЙ ПОИСКА ДЛЯ ФОРМ
include_directories(${PROJ_INC_DIRS})


# Директории поиска библиотек
set(PROJ_LIB_DIRS ${LIB_DIRS})
link_directories(${PROJ_LIB_DIRS}) # директории поиска библиотек

# подключаем библиотеки
set(PROJ_LIBS ${LIBS})
set(PROJ_LIBS ${PROJ_LIBS} ui_design) # ПОДКЛЮЧАЕМ БИБЛИОТЕКУ СТАТИЧЕСКИХ ФОРМ ПРОЕКТА
link_libraries(${PROJ_LIBS}) 


# СБОРКА ВЕРСИИ GUI (NO CONSOLE)
if(${GUI})
    if(${WIN32}) # WINDOWS GUI APPLICATION
        set(CMAKE_EXE_LINKER_FLAGS ${CMAKE_EXE_LINKER_FLAGS} -mwindows)
    endif()
endif()

###################################################################################################################################
# Сборка

set(SOURCES
    Application.cpp
)

# создаем цель
add_executable(program ${SOURCES})

message(NOTICE "######################### BUILD APPLICATION" )

