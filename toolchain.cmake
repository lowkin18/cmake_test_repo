set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR  arm)

SET(CMAKE_SYSTEM_VERSION 1)

set(CMAKE_AR "arm-none-eabi-ar")
set(CMAKE_ASM_COMPILER "arm-none-eabi-as")
set(CMAKE_C_COMPILER "arm-none-eabi-gcc")
set(CMAKE_CXX_COMPILER "arm-none-eabi-g++")
set(CMAKE_LINKER "arm-none-eabi-ld")
set(CMAKE_OBJCOPY "arm-none-eabi-objcopy")
set(CMAKE_RANLIB "arm-none-eabi-ranlib")
set(CMAKE_SIZE "arm-none-eabi-size")
set(CMAKE_STRIP "arm-none-eabi-strip")


set(CMAKE_C_FLAGS                   "-mcpu=cortex-m7 -mthumb -mfpu=fpv5-d16 -mfloat-abi=hard -Wno-psabi --specs=nosys.specs -fdata-sections -ffunction-sections -Wl,--gc-sections" CACHE INTERNAL "")
set(CMAKE_CXX_FLAGS                 "${CMAKE_C_FLAGS} -fno-exceptions" CACHE INTERNAL "")

set(CMAKE_C_FLAGS_DEBUG             "-Os -g" CACHE INTERNAL "")
set(CMAKE_C_FLAGS_RELEASE           "-Os -DNDEBUG" CACHE INTERNAL "")
set(CMAKE_CXX_FLAGS_DEBUG           "${CMAKE_C_FLAGS_DEBUG}" CACHE INTERNAL "")
set(CMAKE_CXX_FLAGS_RELEASE         "${CMAKE_C_FLAGS_RELEASE}" CACHE INTERNAL "")

set(CMAKE_C_COMPILER_VERSION 11)
set(CMAKE_CXX_COMPILER_VERSION 11)


set(CMAKE_TRY_COMPILE_TARGET_TYPE "STATIC_LIBRARY")