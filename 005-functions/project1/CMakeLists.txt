# CMakeLists.txt

cmake_minimum_required(VERSION 3.5)

###################################################################################################################################
# ОПЦИИ СБОРКИ

# пути поиска подключаемых файлов при сборке проектов
set(PROJ_INC_DIRS ${INC_DIRS} ${CMAKE_SOURCE_DIR}/project1/include ${CMAKE_SOURCE_DIR}/project1/src)
include_directories(${PROJ_INC_DIRS})
# message(NOTICE "###### [PROJECT1 SOURCE DIRECTORYES = " ${PROJ_INC_DIRS} "]" )


# Директории поиска библиотек
set(PROJ_LIB_DIRS ${LIB_DIRS})
link_directories(${PROJ_LIB_DIRS}) # директории поиска библиотек
# message(NOTICE "###### [PROJECT1 LIBRARY DIRECTORYES = " ${PROJ_LIB_DIRS} "]" )

# Дополнительные библиотеки
set(PROJ_LIBS ${LIBS})
if(${_DEBUG})
    set(PROJ_LIBS ${PROJ_LIBS} sfml-main-d)
else()
    set(PROJ_LIBS ${PROJ_LIBS} sfml-main)
endif()
link_libraries(${PROJ_LIBS}) # подключаем библиотеки
# message(NOTICE "###### [PROJECT1 LIBRARYES = " ${PROJ_LIBS} "]" )


# СБОРКА ВЕРСИИ GUI (NO CONSOLE)
if(${GUI})
    if(${WIN32}) # WINDOWS GUI APPLICATION
        set(CMAKE_EXE_LINKER_FLAGS ${CMAKE_EXE_LINKER_FLAGS} -mwindows)
    endif()
endif()

###################################################################################################################################
# Сборка

set(SOURCES
    main.cpp
)

# создаем цель
add_executable(program ${SOURCES})


