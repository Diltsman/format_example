add_executable(
  elf
)
target_sources(elf
  PUBLIC
    FILE_SET CXX_MODULES FILES
    main.cpp
  PRIVATE
)


set_target_properties(elf PROPERTIES CXX_CLANG_TIDY "clang-tidy")

target_compile_features(elf PRIVATE cxx_std_23)
set_target_properties(elf PROPERTIES CXX_EXTENSIONS OFF)

target_compile_options(
  elf
  PRIVATE $<$<CXX_COMPILER_ID:MSVC>:/W4 /WX>
          $<$<NOT:$<CXX_COMPILER_ID:MSVC>>:-Wall -Wextra -Wpedantic -Werror>)

target_clangformat_setup(elf)
