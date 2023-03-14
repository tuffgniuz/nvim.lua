local cmake_tools = require("cmake-tools");

cmake_tools.setup {
  cmake_command = "/opt/clion-2021.3.2/bin/cmake",
  cmake_tools_ninja = "/opt/clion-2021.3.2/bin/ninja",
  cmake_generate_options = { "-D", "CMAKE_EXPORT_COMPILE_COMMANDS=1", "-DCMAKE_BUILD_TYPE=Debug", "-G", "Ninja" },
  cmake_build_directory = "cmake-build-debug",
  cmake_build_directory_prefix = "",
  cmake_show_console = "always"
}
