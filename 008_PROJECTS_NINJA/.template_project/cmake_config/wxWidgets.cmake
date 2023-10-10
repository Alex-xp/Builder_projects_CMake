# wxWidgets

##########################################################################################################################################
#
# wxWidgets - использует зависимые динамические библиотеки.
# Для работы с последней версией, лучше собрать самому при помощи данной системы сборки через CMake.
#
#
# ВНИМАНИЕ!!! - ПО УМОЛЧАНИЮ ПОДКЛЮЧЕНО ВСЁ, ЧТО МОЖНО
#
##########################################################################################################################################


set(env_SRC_WX_DIR $ENV{SRC_WX_DIR})
# message(NOTICE "###### DIR [SRC_WX_DIR == " $ENV{SRC_WX_DIR} "]")

set(env_BUILD_WX_DIR $ENV{BUILD_WX_DIR})
# message(NOTICE "###### DIR [BUILD_WX_DIR == " $ENV{BUILD_WX_DIR} "]")

set(env_BIN_WX_DIR $ENV{BIN_WX_DIR})
# message(NOTICE "###### DIR [BIN_WX_DIR == " $ENV{BIN_WX_DIR} "]")

set(env_WX_VENDOR $ENV{WX_VENDOR})
# message(NOTICE "###### WX_VENDOR [WX_VENDOR == " $ENV{WX_VENDOR} "]")

##########################################################################################################################################
# ДИРЕКТОРИИ ПОИСКА ФАЙЛОВ
set(INC_DIRS ${INC_DIRS} ${env_SRC_WX_DIR}/include)
if(${WIN32}) # <------------------ WINDOWS --------------------------------------------------------------------------
    if(${_DEBUG})
        set(INC_DIRS ${INC_DIRS} ${env_BIN_WX_DIR}/mswud)
    else()
        set(INC_DIRS ${INC_DIRS} ${env_BIN_WX_DIR}/mswu)
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
set(LIB_DIRS ${LIB_DIRS} ${env_BIN_WX_DIR})
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
        set(LIBS ${LIBS} wxbase32ud)
        set(LIBS ${LIBS} wxmsw32ud_core)
        set(LIBS ${LIBS} wxmsw32ud_adv)
        set(LIBS ${LIBS} wxmsw32ud_aui)
        set(LIBS ${LIBS} wxmsw32ud_gl)
        set(LIBS ${LIBS} wxjpegd wxpngd wxtiffd)
        set(LIBS ${LIBS} wxbase32ud_xml)
        set(LIBS ${LIBS} wxexpatd)
        set(LIBS ${LIBS} wxmsw32ud_html)
        set(LIBS ${LIBS} wxbase32ud_net)
        set(LIBS ${LIBS} wxmsw32ud_media)
        set(LIBS ${LIBS} wxmsw32ud_propgrid)
        set(LIBS ${LIBS} wxmsw32ud_qa)
        set(LIBS ${LIBS} wxmsw32ud_ribbon)
        set(LIBS ${LIBS} wxmsw32ud_richtext)
        set(LIBS ${LIBS} wxmsw32ud_stc)
        set(LIBS ${LIBS} wxmsw32ud_webview)
        set(LIBS ${LIBS} wxmsw32ud_xrc)
        set(LIBS ${LIBS} wxregexud)
        set(LIBS ${LIBS} wxscintillad)
        set(LIBS ${LIBS} wxzlibd)
    else()
        set(LIBS ${LIBS} wxbase32u)
        set(LIBS ${LIBS} wxmsw32u_core)
        set(LIBS ${LIBS} wxmsw32u_adv)
        set(LIBS ${LIBS} wxmsw32u_aui)
        set(LIBS ${LIBS} wxmsw32u_gl)
        set(LIBS ${LIBS} wxjpeg wxpng wxtiff)
        set(LIBS ${LIBS} wxbase32u_xml)
        set(LIBS ${LIBS} wxexpat)
        set(LIBS ${LIBS} wxmsw32u_html)
        set(LIBS ${LIBS} wxbase32u_net)
        set(LIBS ${LIBS} wxmsw32u_media)
        set(LIBS ${LIBS} wxmsw32u_propgrid)
        set(LIBS ${LIBS} wxmsw32u_qa)
        set(LIBS ${LIBS} wxmsw32u_ribbon)
        set(LIBS ${LIBS} wxmsw32u_richtext)
        set(LIBS ${LIBS} wxmsw32u_stc)
        set(LIBS ${LIBS} wxmsw32u_webview)
        set(LIBS ${LIBS} wxmsw32u_xrc)
        set(LIBS ${LIBS} wxregexu)
        set(LIBS ${LIBS} wxscintilla)
        set(LIBS ${LIBS} wxzlib)
    endif()
else() # <------------------ LINUX -----------------------------------------------------------------------------------

    if(${_DEBUG})
        set(wxWidgets_CONFIG_EXECUTABLE wxWidgets/linux_debug/wx-config)
    else()
        set(wxWidgets_CONFIG_EXECUTABLE wxWidgets/linux_release/wx-config)
    endif()
        
    find_package(wxWidgets COMPONENTS all) # core base xml net)
    if(wxWidgets_FOUND)
        # message(NOTICE "wxWidgets_USE_FILE = ${wxWidgets_USE_FILE}")
        # include(${wxWidgets_USE_FILE})
        # message(NOTICE "wxWidgets_LIBRARIES = ${wxWidgets_LIBRARIES}")
        # link_libraries(${wxWidgets_LIBRARIES})
        set(INC_DIRS ${__INC_DIRS} ${wxWidgets_USE_FILE} PARENT_SCOPE )
        set(__LIBS ${__LIBS} ${wxWidgets_LIBRARIES})
    endif()


endif()


# message(NOTICE "###### LIBS == " ${LIBS})
# message(NOTICE "###### LIB_DIRS == " ${LIB_DIRS})
# message(NOTICE "###### INC_DIRS == " ${INC_DIRS})

# message(NOTICE "###### env_SRC_WX_DIR == " ${env_SRC_WX_DIR})
# message(NOTICE "###### env_BUILD_WX_DIR == " ${env_BUILD_WX_DIR})
# message(NOTICE "###### env_BIN_WX_DIR == " ${env_BIN_WX_DIR})
# message(NOTICE "###### env_WX_VENDOR == " ${env_WX_VENDOR})
