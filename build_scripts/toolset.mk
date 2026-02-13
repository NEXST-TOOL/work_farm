# Vivado IDE version and installed location
VIVADO_VERSION ?= 2024.2
VIVADO_TOOL_BASE ?= /opt/Xilinx_$(VIVADO_VERSION)

# Vivado and SDK tool executable binary location
ifeq ($(VIVADO_VERSION),2025.1)
	VIVADO_TOOL_PATH := $(VIVADO_TOOL_BASE)/Vivado/$(VIVADO_VERSION)/Vivado/bin
else
	VIVADO_TOOL_PATH := $(VIVADO_TOOL_BASE)/Vivado/$(VIVADO_VERSION)/bin
endif

EXPORT_VIVADO_PATH := export PATH=$(VIVADO_TOOL_PATH):$$PATH

LINUX_GCC_PREFIX ?= riscv64-linux-gnu-

# Leveraged Vivado tools
VIVADO_BIN := vivado
