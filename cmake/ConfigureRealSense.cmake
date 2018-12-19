# TODO: use the find_file macro

if(WIN32)
    set(REALSENSE_INCLUDE_DIR "C:/Program Files (x86)/Intel/RSSDK/include")
    set(REALSENSE_UTILITY_DIR "C:/Program Files (x86)/Intel/RSSDK/sample/core/common/include")

    if(${CMAKE_BUILD_TYPE} STREQUAL "Debug")
        set(REALSENSE_LIBRARY "C:/Program Files (x86)/Intel/RSSDK/lib/x64/libpxcmd_d.lib")
            set(REALSENSE_UTILITY_LIBRARY "C:/Program Files (x86)/Intel/RSSDK/sample/core/common/lib/x64/v140/libpxcutilsmd_d.lib")
    endif()

    if(${CMAKE_BUILD_TYPE} STREQUAL "Release")
        set(REALSENSE_LIBRARY "C:/Program Files (x86)/Intel/RSSDK/lib/x64/libpxcmd.lib")
            set(REALSENSE_UTILITY_LIBRARY "C:/Program Files (x86)/Intel/RSSDK/sample/core/common/lib/x64/v140/libpxcutilsmd.lib")
    endif()


    include_directories(${REALSENSE_INCLUDE_DIR} ${REALSENSE_UTILITY_DIR})

    list(APPEND LIBRARIES ${REALSENSE_LIBRARY})
    list(APPEND LIBRARIES ${REALSENSE_UTILITY_LIBRARY})

    #--- DEBUG
    # message(STATUS "REALSENSE_LIBRARY ${REALSENSE_LIBRARY}")
    # message(STATUS "REALSENSE_UTILITY_LIBRARY ${REALSENSE_UTILITY_LIBRARY}")

    #--- Mark as available
    add_definitions(-DHAS_REALSENSE)
endif()
