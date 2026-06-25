# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
# Tool Version Limit: 2025.11
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
__SIM_FPO__ = 1
__SIM_MATHHLS__ = 1
__SIM_FFT__ = 1
__SIM_FIR__ = 1
__SIM_DDS__ = 1
__USE_VCXX_CLANG__ = 1

__USE_CLANG__ = 1

__COSIM_FLOW__ = 1


DIRECTORY := $(shell basename $(CURDIR))
ifeq ($(DIRECTORY), wrapc_pc)
  override TARGET := cosim.pc.exe
  WFLAG += -DPOST_CHECK
else
  override TARGET := cosim.tv.exe
endif
IRWRAPPER  := $(basename $(wildcard *.ll))
CPPWRAPPER := $(IRWRAPPER:_ir=)
APATB_UTIL := $(basename $(wildcard $(IRWRAPPER:_ir=_util).cpp))

AUTOPILOT_ROOT := C:/2025.2/Vitis
AUTOPILOT_MACH := win64

ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
ifndef AP_GCC_PATH
  AP_GCC_PATH := C:/2025.2/Vitis/tps/mingw/10.0.0/win64.o/nt/bin
endif
AUTOPILOT_TOOL = ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AUTOPILOT_TECH = ${AUTOPILOT_ROOT}/common/technology
AP_CLANG_PATH := ${AUTOPILOT_ROOT}/win64/tools/clang-16/bin
TOOLCHAIN += --sysroot=C:/2025.2/Vitis/tps/mingw/10.0.0/win64.o/nt
LFLAG += --sysroot=C:/2025.2/Vitis/tps/mingw/10.0.0/win64.o/nt
CCFLAG += -Werror=uninitialized
CCFLAG += -Wno-error=c++11-narrowing
CCFLAG += -Wno-error=sometimes-uninitialized

IFLAG += -g

IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools/auto_cc/include"
IFLAG += -D__VITIS_HLS__
IFLAG += -D__HLS_COSIM__
IFLAG += -D__SIM_FPO__
IFLAG += -D__SIM_FFT__
IFLAG += -D__SIM_FIR__
IFLAG += -D__SIM_DDS__
IFLAG += -D__DSP48E2__
WFLAG += -DUSE_BINARY_TV_FILE
IFLAG += -DNT
LFLAG += -Wl,--stack,0x40000000
LFLAG += -lpthread
IFLAG += -D__RTL_SIMULATION__
IFLAG += -D__xilinx_ip_top=
DFLAG += -DAESL_PIPELINE
LFLAG += -Wl,--enable-auto-import
CCFLAG += --target=x86_64-w64-windows-gnu
WFLAG += --target=x86_64-w64-windows-gnu
LFLAG += --target=x86_64-w64-windows-gnu

include ./Makefile.rules

APATB_OBJECTS := $(addprefix $(ObjDir)/, $(addsuffix .o, $(CPPWRAPPER) $(IRWRAPPER) $(APATB_UTIL)))
OBJECTS := $(filter-out $(APATB_OBJECTS), $(OBJECTS)) $(APATB_OBJECTS)

all : $(TARGET)

$(ObjDir)/$(CPPWRAPPER).o: $(CPPWRAPPER).cpp
	$(Echo) "   Compiling $<" $(AVE_DIR_DLOG)
	$(Verb) $(CXX) -fno-builtin-isinf -fno-builtin-isnan -c $(TOOLCHAIN) $(IFLAG) $(WFLAG) $< -o $@

$(ObjDir)/$(APATB_UTIL).o: $(APATB_UTIL).cpp
	$(Echo) "   Compiling $<" $(AVE_DIR_DLOG)
	$(Verb) $(CXX) -fno-builtin-isinf -fno-builtin-isnan -c $(TOOLCHAIN) $(IFLAG) $(WFLAG) $< -o $@

$(ObjDir)/relu_tb.cpp_pre.cpp.tb.o : relu_tb.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling relu_tb.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) $(CC) ${CCFLAG} ${TOOLCHAIN} -std=gnu++17 -fno-builtin-isinf -fno-builtin-isnan -c -Wno-unknown-pragmas -Wno-unknown-pragmas $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/relu.cpp_pre.cpp.tb.o : relu.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling relu.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) $(CC) ${CCFLAG} ${TOOLCHAIN} -std=gnu++17 -fno-builtin-isinf -fno-builtin-isnan -c  $(IFLAG) $(DFLAG) $< -o $@; \
