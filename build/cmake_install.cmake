# Install script for directory: /Users/makotomorishita/Desktop/LBNL/GPTune

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/lib_gptuneclcm.3.0.0.dylib;/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/lib_gptuneclcm.3.dylib")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune" TYPE SHARED_LIBRARY FILES
    "/Users/makotomorishita/Desktop/LBNL/GPTune/build/lib_gptuneclcm.3.0.0.dylib"
    "/Users/makotomorishita/Desktop/LBNL/GPTune/build/lib_gptuneclcm.3.dylib"
    )
  foreach(file
      "$ENV{DESTDIR}/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/lib_gptuneclcm.3.0.0.dylib"
      "$ENV{DESTDIR}/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/lib_gptuneclcm.3.dylib"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      execute_process(COMMAND "/usr/bin/install_name_tool"
        -id "/usr/local/lib/lib_gptuneclcm.3.dylib"
        "${file}")
      execute_process(COMMAND /usr/bin/install_name_tool
        -add_rpath "/usr/local/lib"
        "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" -x "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/lib_gptuneclcm.dylib")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune" TYPE SHARED_LIBRARY FILES "/Users/makotomorishita/Desktop/LBNL/GPTune/build/lib_gptuneclcm.dylib")
  if(EXISTS "$ENV{DESTDIR}/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/lib_gptuneclcm.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/lib_gptuneclcm.dylib")
    execute_process(COMMAND "/usr/bin/install_name_tool"
      -id "/usr/local/lib/lib_gptuneclcm.3.dylib"
      "$ENV{DESTDIR}/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/lib_gptuneclcm.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/usr/local/lib"
      "$ENV{DESTDIR}/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/lib_gptuneclcm.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" -x "$ENV{DESTDIR}/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/lib_gptuneclcm.dylib")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/pdqrdriver")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune" TYPE EXECUTABLE FILES "/Users/makotomorishita/Desktop/LBNL/GPTune/build/pdqrdriver")
  if(EXISTS "$ENV{DESTDIR}/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/pdqrdriver" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/pdqrdriver")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/usr/local/lib"
      "$ENV{DESTDIR}/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/pdqrdriver")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" -u -r "$ENV{DESTDIR}/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/pdqrdriver")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/lcm.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune" TYPE FILE FILES "/Users/makotomorishita/Desktop/LBNL/GPTune/gptuneclcm/lcm.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/__init__.py;/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/__version__.py;/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/callhpbandster.py;/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/callopentuner.py;/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/computer.py;/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/database.py;/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/data.py;/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/gptune.py;/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/lcm.py;/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/model.py;/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/options.py;/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/problem.py;/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/sample.py;/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune/search.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/Users/makotomorishita/Desktop/LBNL/GPTune/build/GPTune" TYPE FILE FILES
    "/Users/makotomorishita/Desktop/LBNL/GPTune/GPTune/__init__.py"
    "/Users/makotomorishita/Desktop/LBNL/GPTune/GPTune/__version__.py"
    "/Users/makotomorishita/Desktop/LBNL/GPTune/GPTune/callhpbandster.py"
    "/Users/makotomorishita/Desktop/LBNL/GPTune/GPTune/callopentuner.py"
    "/Users/makotomorishita/Desktop/LBNL/GPTune/GPTune/computer.py"
    "/Users/makotomorishita/Desktop/LBNL/GPTune/GPTune/database.py"
    "/Users/makotomorishita/Desktop/LBNL/GPTune/GPTune/data.py"
    "/Users/makotomorishita/Desktop/LBNL/GPTune/GPTune/gptune.py"
    "/Users/makotomorishita/Desktop/LBNL/GPTune/GPTune/lcm.py"
    "/Users/makotomorishita/Desktop/LBNL/GPTune/GPTune/model.py"
    "/Users/makotomorishita/Desktop/LBNL/GPTune/GPTune/options.py"
    "/Users/makotomorishita/Desktop/LBNL/GPTune/GPTune/problem.py"
    "/Users/makotomorishita/Desktop/LBNL/GPTune/GPTune/sample.py"
    "/Users/makotomorishita/Desktop/LBNL/GPTune/GPTune/search.py"
    )
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/makotomorishita/Desktop/LBNL/GPTune/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
