if(CMAKE_VERSION VERSION_LESS 3.0)
  message(FATAL_ERROR "CMake 3.0 or greater is required")
endif()

add_library(Ableton::Link IMPORTED INTERFACE)
set_property(TARGET Ableton::Link APPEND PROPERTY
