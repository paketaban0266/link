if(CMAKE_VERSION VERSION_LESS 3.0)
  message(FATAL_ERROR "CMake 3.0 or greater is required")
endif()

add_library(Ableton::Link IMPORTED INTERFACE)
set_property(TARGET Ableton::Link APPEND PROPERTY
  INTERFACE_INCLUDE_DIRECTORIES
  ${CMAKE_CURRENT_LIST_DIR}/include
)
# Force C++11 support for consuming targets
set_property(TARGET Ableton::Link APPEND PROPERTY
INTERFACE_COMPILE_FEATURES
  cxx_generalized_initializers
)

if(UNIX)
  set_property(TARGET Ableton::Link APPEND PROPERTY
  INTERFACE_COMPILE_DEFINITIONS
    LINK_PLATFORM_UNIX=1
  )
endif()

if(APPLE)
  set_property(TARGET Ableton::Link APPEND PROPERTY
  INTERFACE_COMPILE_DEFINITIONS
