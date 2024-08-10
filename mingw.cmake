set(CMAKE_SYSTEM_NAME Windows)

set(CMAKE_C_COMPILER i686-w64-mingw32-gcc)
set(CMAKE_CXX_COMPILER i686-w64-mingw32-g++)

set(CMAKE_FIND_ROOT_PATH /usr/i686-w64-mingw32 ${CMAKE_CURRENT_LIST_DIR})

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

find_file(GCC_RUNTIME_DLL libgcc_s_dw2-1.dll)
find_file(STD_CPP_DLL libstdc++-6.dll)
find_file(PTHREAD_DLL libwinpthread-1.dll)

if(GCC_RUNTIME_DLL)
	install(FILES ${GCC_RUNTIME_DLL} DESTINATION dist)

else()
	message(WARNING "GCC_RUNTIME_DLL not found")
endif()
if(STD_CPP_DLL)
	install(FILES ${STD_CPP_DLL} DESTINATION dist)
else()
	message(WARNING "STD_CPP_DLL not found")
endif()
if(PTHREAD_DLL)
	install(FILES ${PTHREAD_DLL} DESTINATION dist)
else()
	message(WARNING "PTHREAD_DLL not found")
endif()

