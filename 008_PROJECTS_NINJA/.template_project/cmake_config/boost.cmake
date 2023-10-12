##########################################################################################################################################
# ПОИСК BOOST из системного компилятора (WINDOWS GCC MSYS2 ; LINUX GCC OS)

set(PROJ_BOOST_COMPONENTS)

# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_atomic)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_chrono)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_container)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_context)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_contract)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_coroutine)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_date_time)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_exception)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_fiber-mt)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_filesystem)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_graph_parallel)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_graph)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_headers)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_iostreams)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_json)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_locale)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_log_setup)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_log)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_math_c99)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_math_c99f)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_math_c99l)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_math_tr1)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_math_tr1f)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_math_tr1l)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_mpi)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_nowide)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_numpy)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_prg_exec_monitor)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_program_options)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_python)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_random)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_regex)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_serialization)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_stacktrace_noop)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_stacktrace_windbg_cached)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_stacktrace_windbg)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_system)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_test_exec_monitor)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_thread)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_timer)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_type_erasure)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_unit_test_framework)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_url)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_wave)
# set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} boost_wserialization)

set(PROJ_BOOST_COMPONENTS ${PROJ_BOOST_COMPONENTS} ALL)

find_package(Boost REQUIRED ${PROJ_BOOST_COMPONENTS})



##########################################################################################################################################
# ДОПОЛНИТЕЛЬНЫЕ КОМПОНЕНТЫ
if(${WIN32}) # <------------------ WINDOWS --------------------------------------------------------------------------

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






