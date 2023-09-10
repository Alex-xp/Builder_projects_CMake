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
set(PROJ_INC_DIRS ${INC_DIRS} ${CMAKE_SOURCE_DIR}/project1/include ${CMAKE_SOURCE_DIR}/project1/src)
set(PROJ_INC_DIRS ${PROJ_INC_DIRS} static_lib1/include)
include_directories(${PROJ_INC_DIRS})

message(NOTICE "###### [PROJECT1 SOURCE DIRECTORYES = " ${PROJ_INC_DIRS} "]" )

# link_directories(${PROJ_LIB_DIRS}) # директории поиска библиотек
# link_libraries(${PROJ_LIBS}) # подключаем библиотеки

 # директории поиска библиотек
link_directories(
    ${LIB_DIRS}
    static_lib1
)

# подключаем библиотеки
link_libraries(
    static_lib1
)


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

# target_link_libraries(project1 static_lib1)

