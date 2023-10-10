##########################################################################################################################################
#
# BOOST - немного тяжеловат в сборке, по причине того, что напрямую не использует CMake. 
# А своя система сборки, очень долго собирает универсальную машину с размером более 1Гб, что крайне редко требуется для проектов. 
# Дополнительно ко всему - использует статическую сборку (не требует дополнительных библиотек).
# BOOST лучше получить готовым.
#
# WINDOWS - BOOST Устанавливается с компилятором MSYS2 MINGW.
# pacman -S mingw64/mingw-w64-x86_64-boost
#
# LINUX - используется зависимость из репозитория.
#
#
# ВНИМАНИЕ!!! - ПОДКЛЮЧАТЬ БИБЛИОТЕКИ ТОЛЬКО ПО НЕОБХОДИМОСТИ !!!! (увеличивает размер конечного файла непропорцианально требованиям)
#
##########################################################################################################################################



##########################################################################################################################################
# ДИРЕКТОРИИ ПОИСКА ФАЙЛОВ
set(INC_DIRS ${INC_DIRS})
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
set(LIB_DIRS ${LIB_DIRS})
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

    # set(LIBS ${LIBS} boost_atomic-mt)
    # set(LIBS ${LIBS} boost_chrono-mt)
    # set(LIBS ${LIBS} boost_container-mt)
    # set(LIBS ${LIBS} boost_context-mt)
    # set(LIBS ${LIBS} boost_contract-mt)
    # set(LIBS ${LIBS} boost_coroutine-mt)
    # set(LIBS ${LIBS} boost_date_time-mt)
    # set(LIBS ${LIBS} boost_exception-mt)
    # set(LIBS ${LIBS} boost_fiber-mt)
    # set(LIBS ${LIBS} boost_filesystem-mt)
    # set(LIBS ${LIBS} boost_graph-mt)
    # set(LIBS ${LIBS} boost_iostreams-mt)
    # set(LIBS ${LIBS} boost_json-mt)
    # set(LIBS ${LIBS} boost_locale-mt)
    # set(LIBS ${LIBS} boost_log_setup-mt)
    # set(LIBS ${LIBS} boost_log-mt)
    # set(LIBS ${LIBS} boost_nowide-mt)
    # set(LIBS ${LIBS} boost_prg_exec_monitor-mt)
    # set(LIBS ${LIBS} boost_program_options-mt)
    # set(LIBS ${LIBS} boost_random-mt)
    # set(LIBS ${LIBS} boost_regex-mt)
    # set(LIBS ${LIBS} boost_serialization-mt)
    # set(LIBS ${LIBS} boost_stacktrace_noop-mt)
    # set(LIBS ${LIBS} boost_stacktrace_windbg_cached-mt)
    # set(LIBS ${LIBS} boost_stacktrace_windbg-mt)
    # set(LIBS ${LIBS} boost_system-mt)
    # set(LIBS ${LIBS} boost_test_exec_monitor-mt)
    # set(LIBS ${LIBS} boost_thread-mt)
    # set(LIBS ${LIBS} boost_timer-mt)
    # set(LIBS ${LIBS} boost_type_erasure-mt)
    # set(LIBS ${LIBS} boost_unit_test_framework-mt)
    # set(LIBS ${LIBS} boost_url-mt)
    # set(LIBS ${LIBS} boost_wave-mt)
    # set(LIBS ${LIBS} boost_wserialization-mt)

    # winsock2 - работа с сокетами в ОС WINDOWS
    # set(LIBS ${LIBS} ws2_32)


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






