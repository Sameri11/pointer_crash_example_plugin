# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(pointer_crash_example_plugin_library VERSION 0.0.1 LANGUAGES C)

add_library(pointer_crash_example_plugin SHARED
  "pointer_crash_example_plugin.c"
)

set_target_properties(pointer_crash_example_plugin PROPERTIES
  PUBLIC_HEADER pointer_crash_example_plugin.h
  OUTPUT_NAME "pointer_crash_example_plugin"
)

target_compile_definitions(pointer_crash_example_plugin PUBLIC DART_SHARED_LIB)
