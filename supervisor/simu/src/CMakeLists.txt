cmake_minimum_required(VERSION 2.8.9)
STRING(REPLACE "\"" "/" directory_test "${directory_test}" )
MESSAGE(STATUS "DIR:") 
MESSAGE(STATUS ${directory_test})
MESSAGE(STATUS  ${PROJECT_PATH}) 
project("${directory_test}")
set(CMAKE_BUILD_TYPE Release)

#set(G "Unix Makefiles" )
#set(CMAKE_CXX_COMPILER "C:/cygwin/bin/i686-w64-mingw32-g++.exe" )
#set(CMAKE_C_COMPILER "C:/cygwin/bin/i686-w64-mingw32-gcc.exe")

#Bring the headers, such as Student.h into the project
include_directories(include)
 
#However, the file(GLOB...) allows for wildcard additions:
file(GLOB SOURCES "kernel_app/*.c" "memory/*.c" "non_replicated/*.c" "replica_2/*.c")
#file(GLOB SOURCES "memory/*.c")
#file(GLOB SOURCES "non_replicated/*.c")
#file(GLOB SOURCES "replica_2/*.c")
 
#add_executable(poste ${SOURCES})
#Generate the shared library from the sources
add_library(model SHARED ${SOURCES})