


add_library(main main.cpp main.hpp)

target_include_directories(main PUBLIC "${PROJECT_SOURCE_DIR}/app")
target_link_libraries(main PUBLIC app)