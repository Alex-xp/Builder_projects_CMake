set(env_ROOT_DIR $ENV{ROOT_DIR})
# message(NOTICE "###### DIR [ROOT_DIR == " $ENV{ROOT_DIR} "]")

set(env_BIN_DIR $ENV{BIN_DIR})
# message(NOTICE "###### DIR [BIN_DIR == " $ENV{BIN_DIR} "]")

set(env_BIN_DIR_DEBUG $ENV{BIN_DIR_DEBUG})
# message(NOTICE "###### DIR [BIN_DIR_DEBUG == " $ENV{BIN_DIR_DEBUG} "]")

set(env_BIN_DIR_RELEASE $ENV{BIN_DIR_RELEASE})
# message(NOTICE "###### DIR [BIN_DIR_RELEASE == " $ENV{BIN_DIR_RELEASE} "]")



# 3TH_PARTY
set(env_BASE_3TH_DIR $ENV{BASE_3TH_DIR})
# message(NOTICE "###### DIR [BASE_3TH_DIR == " $ENV{BASE_3TH_DIR} "]")

set(env_BASE_BIN_3TH_DIR $ENV{BASE_BIN_3TH_DIR})
# message(NOTICE "###### DIR [BASE_BIN_3TH_DIR == " $ENV{BASE_BIN_3TH_DIR} "]")

set(env_BIN_3TH_DIR $ENV{BIN_3TH_DIR})
# message(NOTICE "###### DIR [BIN_3TH_DIR == " $ENV{BIN_3TH_DIR} "]")



##########################################################################################################################################
# настройки компилятора в зависимости от ОС
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




##########################################################################################################################################
# ВЕРСИЯ СБОРКИ DEBUG ИЛИ RELEASE
set(_DEBUG 0)

if(${CMAKE_BUILD_TYPE} STREQUAL "Debug")
    set(_DEBUG 1)
endif()

if(${CMAKE_BUILD_TYPE} STREQUAL "DEBUG")
    set(_DEBUG 1)
endif()




##########################################################################################################################################
# Выходная директория
set(OUTPUT_DIR ${CMAKE_BINARY_DIR})
if(${_DEBUG})
    message(NOTICE "###### [DEBUG VERSION]" )
    set(OUTPUT_DIR ${CMAKE_BINARY_DIR})
else()
    message(NOTICE "###### [RELEASE VERSION]" )
    set(OUTPUT_DIR ${CMAKE_BINARY_DIR})
endif()

message(NOTICE "###### [OUTPUT DIRECTORY = " ${OUTPUT_DIR} "]" )

# устанавливаем директории компиляции проекта
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${OUTPUT_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${OUTPUT_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${OUTPUT_DIR}/bin)


##########################################################################################################################################
# Общие директории поиска файлов
set(INC_DIRS ${CMAKE_SOURCE_DIR})
set(INC_DIRS ${INC_DIRS} ${CMAKE_SOURCE_DIR}/include )
if(${WIN32}) # <------------------ WINDOWS --------------------------------------------------------------------------
    if(${_DEBUG})
        # DEBUG OPTIONS
    else()
        # RELEASE OPTIONS
    endif()
else() # <------------------ LINUX -----------------------------------------------------------------------------------
    if(${_DEBUG})
        # DEBUG OPTIONS
    else()
        # RELEASE OPTIONS
    endif()
endif()





##########################################################################################################################################
# Общие директории поиска библиотек
set(LIB_DIRS ${CMAKE_LIBRARY_OUTPUT_DIRECTORY} ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY} ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})
if(${WIN32}) # <------------------ WINDOWS --------------------------------------------------------------------------
    if(${_DEBUG})
        # DEBUG OPTIONS
    else()
        # RELEASE OPTIONS
    endif()
else() # <------------------ LINUX -----------------------------------------------------------------------------------
    if(${_DEBUG})
        # DEBUG OPTIONS
    else()
        # RELEASE OPTIONS
    endif()
endif()



##########################################################################################################################################
# Общие библиотеки
set(LIBS )
if(${WIN32}) # <------------------ WINDOWS --------------------------------------------------------------------------
    if(${_DEBUG})
        # DEBUG OPTIONS
    else()
        # RELEASE OPTIONS
    endif()
else() # <------------------ LINUX -----------------------------------------------------------------------------------
    if(${_DEBUG})
        # DEBUG OPTIONS
    else()
        # RELEASE OPTIONS
    endif()
endif()





