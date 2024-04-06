cmake_minimum_required (VERSION 3.5)
 
project (lingmo-package-manager)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

include(GNUInstallDirs)

include_directories (include)

add_subdirectory(buildPkg)
add_subdirectory(core)
add_subdirectory(desCheck)
add_subdirectory(installpkg)