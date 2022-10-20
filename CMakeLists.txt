cmake_minimum_required(VERSION 3.24.1)



set(CMAKE_TOOLCHAIN_FILE "${CMAKE_CURRENT_SOURCE_DIR}/toolchain.cmake")



project("SW0476_PCU")
set(EXECUTABLE ${PROJECT_NAME})

add_subdirectory(app)
add_subdirectory(src)
add_subdirectory(tests)
add_executable("${EXECUTABLE}" src)

# target_link_directories("${PROJECT_NAME}" PRIVATE app/ src/)
# target_link_directories(test PUBLIC app/ main/ )
target_include_directories("${EXECUTABLE}" PRIVATE app/ src/ )
target_link_libraries("${EXECUTABLE}" PRIVATE app PRIVATE main)

add_custom_command(TARGET "${EXECUTABLE}"
        POST_BUILD
        COMMAND arm-none-eabi-size "${EXECUTABLE}")

add_custom_command(TARGET "${EXECUTABLE}"
        POST_BUILD
        COMMAND arm-none-eabi-objcopy -O ihex ${EXECUTABLE} ${PROJECT_NAME}.hex
        COMMAND arm-none-eabi-objcopy -O binary ${EXECUTABLE} ${PROJECT_NAME}.bin)