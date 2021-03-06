# update per change V0002
TOOLCHAIN_PREFIX = arm-none-eabi-
C_SOURCES +=
CXX_SOURCES += platform/$(PLATFORM).cpp
S_SOURCES +=
DEFINES += -DMCU_$(PLATFORM)
COMPILE_C_FLAGS += -mcpu=cortex-m3 -mthumb
COMPILE_CXX_FLAGS += -mcpu=cortex-m3 -mthumb
COMPILE_ASM_FLAGS += -mcpu=cortex-m3 -mthumb
LINK_FLAGS += -mcpu=cortex-m3 -mthumb
LDSCRIPT = -T"ld/$(PLATFORM).ld"