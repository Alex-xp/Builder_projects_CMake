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
    
endfunction(setBaseCompillerOptions)



###################################################################################################################################
# ОПЦИИ СБОРКИ
function(setLibsSolutionOptions)
    # message(NOTICE "###### [SOURCE DIRECTORY = " ${CMAKE_SOURCE_DIR} "]" )

    # пути поиска общих подключаемых файлов при сборке проектов (текущие, общие и сторонние библиотеки)
    set(__INC_DIRS ${CMAKE_SOURCE_DIR} ${CMAKE_SOURCE_DIR}/include ${CMAKE_SOURCE_DIR}/3TH_PARTY/wxWidgets/include )
    if(${WIN32}) # <------------------ WINDOWS --------------------------------------------------------------------------
        if(${_DEBUG})
            set(__INC_DIRS ${__INC_DIRS} ${CMAKE_SOURCE_DIR}/build/wxWidgets/windows_debug/lib/gcc_x64_dll/mswud )
        else()
            set(__INC_DIRS ${__INC_DIRS} ${CMAKE_SOURCE_DIR}/build/wxWidgets/windows_release/lib/gcc_x64_dll/mswu )
        endif()
    else() # <------------------ LINUX -----------------------------------------------------------------------------------
        if(${_DEBUG})
        else()
        endif()
    endif()

    set(INC_DIRS ${__INC_DIRS} PARENT_SCOPE )



    # Общие директории поиска библиотек
    set(LIB_DIRS ${CMAKE_LIBRARY_OUTPUT_DIRECTORY} ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY} ${CMAKE_RUNTIME_OUTPUT_DIRECTORY} PARENT_SCOPE)



    # Общие библиотеки
    set(__LIBS )
    if(${WIN32}) # <------------------ WINDOWS --------------------------------------------------------------------------
        if(${_DEBUG})
            set(__LIBS ${__LIBS} wxbase32ud)
            set(__LIBS ${__LIBS} wxmsw32ud_core)
            set(__LIBS ${__LIBS} wxmsw32ud_adv)
            set(__LIBS ${__LIBS} wxmsw32ud_aui)
            set(__LIBS ${__LIBS} wxmsw32ud_gl)
            set(__LIBS ${__LIBS} wxjpegd wxpngd wxtiffd)
            set(__LIBS ${__LIBS} wxbase32ud_xml)
            set(__LIBS ${__LIBS} wxexpatd)
            set(__LIBS ${__LIBS} wxmsw32ud_html)
            set(__LIBS ${__LIBS} wxbase32ud_net)
            set(__LIBS ${__LIBS} wxmsw32ud_media)
            set(__LIBS ${__LIBS} wxmsw32ud_propgrid)
            set(__LIBS ${__LIBS} wxmsw32ud_qa)
            set(__LIBS ${__LIBS} wxmsw32ud_ribbon)
            set(__LIBS ${__LIBS} wxmsw32ud_richtext)
            set(__LIBS ${__LIBS} wxmsw32ud_stc)
            set(__LIBS ${__LIBS} wxmsw32ud_webview)
            set(__LIBS ${__LIBS} wxmsw32ud_xrc)
            set(__LIBS ${__LIBS} wxregexud)
            set(__LIBS ${__LIBS} wxscintillad)
            set(__LIBS ${__LIBS} wxzlibd)
        else()
            set(__LIBS ${__LIBS} wxbase32u)
            set(__LIBS ${__LIBS} wxmsw32u_core)
            set(__LIBS ${__LIBS} wxmsw32u_adv)
            set(__LIBS ${__LIBS} wxmsw32u_aui)
            set(__LIBS ${__LIBS} wxmsw32u_gl)
            set(__LIBS ${__LIBS} wxjpeg wxpng wxtiff)
            set(__LIBS ${__LIBS} wxbase32u_xml)
            set(__LIBS ${__LIBS} wxexpat)
            set(__LIBS ${__LIBS} wxmsw32u_html)
            set(__LIBS ${__LIBS} wxbase32u_net)
            set(__LIBS ${__LIBS} wxmsw32u_media)
            set(__LIBS ${__LIBS} wxmsw32u_propgrid)
            set(__LIBS ${__LIBS} wxmsw32u_qa)
            set(__LIBS ${__LIBS} wxmsw32u_ribbon)
            set(__LIBS ${__LIBS} wxmsw32u_richtext)
            set(__LIBS ${__LIBS} wxmsw32u_stc)
            set(__LIBS ${__LIBS} wxmsw32u_webview)
            set(__LIBS ${__LIBS} wxmsw32u_xrc)
            set(__LIBS ${__LIBS} wxregexu)
            set(__LIBS ${__LIBS} wxscintilla)
            set(__LIBS ${__LIBS} wxzlib)
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

    set(LIBS ${__LIBS} PARENT_SCOPE)


endfunction(setLibsSolutionOptions)
