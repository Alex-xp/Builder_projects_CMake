# SFML

##########################################################################################################################################
#
# SFML - использует зависимые динамические библиотеки.
# Для работы с последней версией, лучше собрать самому при помощи данной системы сборки через CMake.
#
#
# ВНИМАНИЕ!!! - ПО УМОЛЧАНИЮ ПОДКЛЮЧЕНО ВСЁ, ЧТО МОЖНО
#
##########################################################################################################################################

set(env_SRC_SFML_DIR $ENV{SRC_SFML_DIR})
# message(NOTICE "###### DIR [SRC_SFML_DIR == " $ENV{SRC_SFML_DIR} "]")

set(env_BUILD_SFML_DIR $ENV{BUILD_SFML_DIR})
# message(NOTICE "###### DIR [BUILD_SFML_DIR == " $ENV{BUILD_SFML_DIR} "]")

set(env_BIN_SFML_DIR $ENV{BIN_SFML_DIR})
# message(NOTICE "###### DIR [BIN_SFML_DIR == " $ENV{BIN_SFML_DIR} "]")


##########################################################################################################################################
# ДИРЕКТОРИИ ПОИСКА ФАЙЛОВ
set(INC_DIRS ${INC_DIRS} ${env_SRC_SFML_DIR}/include)
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
# ДИРЕКТОРИИ ПОИСКА БИБЛИОТЕК
set(LIB_DIRS ${LIB_DIRS} ${env_BIN_SFML_DIR})
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
# ИСПОЛЬЗУЕМЫЕ БИБЛИОТЕКИ (подключить или отключить через комментарии)
if(${WIN32}) # <------------------ WINDOWS --------------------------------------------------------------------------
    if(${_DEBUG})
        set(LIBS ${LIBS} sfml-system-d)
        set(LIBS ${LIBS} sfml-graphics-d)
        set(LIBS ${LIBS} sfml-window-d)
        set(LIBS ${LIBS} sfml-network-d)
        set(LIBS ${LIBS} sfml-audio-d)
        if(${GUI})
            set(LIBS ${LIBS} sfml-main-d)
        endif()
    else()
        set(LIBS ${LIBS} sfml-system)
        set(LIBS ${LIBS} sfml-graphics)
        set(LIBS ${LIBS} sfml-window)
        set(LIBS ${LIBS} sfml-network)
        set(LIBS ${LIBS} sfml-audio)
        if(${GUI})
            set(LIBS ${LIBS} sfml-main)
        endif()
    endif()

else() # <------------------ LINUX -----------------------------------------------------------------------------------
    if(${_DEBUG})
        set(LIBS ${LIBS} sfml-system-d)
        set(LIBS ${LIBS} sfml-graphics-d)
        set(LIBS ${LIBS} sfml-window-d)
        set(LIBS ${LIBS} sfml-network-d)
        set(LIBS ${LIBS} sfml-audio-d)
        set(LIBS ${LIBS} sfml-main-d)
    else()
        set(LIBS ${LIBS} sfml-system)
        set(LIBS ${LIBS} sfml-graphics)
        set(LIBS ${LIBS} sfml-window)
        set(LIBS ${LIBS} sfml-network)
        set(LIBS ${LIBS} sfml-audio)
        set(LIBS ${LIBS} sfml-main)
    endif()
endif()

