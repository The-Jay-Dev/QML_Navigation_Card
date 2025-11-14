# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appStylized_Card_Test_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appStylized_Card_Test_autogen.dir\\ParseCache.txt"
  "appStylized_Card_Test_autogen"
  )
endif()
