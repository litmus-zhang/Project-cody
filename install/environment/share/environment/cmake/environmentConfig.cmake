# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_environment_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED environment_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(environment_FOUND FALSE)
  elseif(NOT environment_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(environment_FOUND FALSE)
  endif()
  return()
endif()
set(_environment_CONFIG_INCLUDED TRUE)

# output package information
if(NOT environment_FIND_QUIETLY)
  message(STATUS "Found environment: 0.0.0 (${environment_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'environment' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${environment_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(environment_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${environment_DIR}/${_extra}")
endforeach()
