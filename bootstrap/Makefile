
ifneq (${COMPILER_PATH}, )
EXPORT_CC_PATH := export PATH=$(COMPILER_PATH):$$PATH
endif

ifneq (${DTC_LOC}, )
EXPORT_DTC_PATH := export PATH=$(DTC_LOC):$$PATH
else
EXPORT_DTC_PATH := $$PATH
endif

BOOT_STRAP_LOC := $(shell pwd)

.PHONY: FORCE

# BL2: ZynqMP/Zynq First-Stage Boot Loader (FSBL)
include scripts/fsbl.mk

# PMU Firmware (PMUFW)
include scripts/pmufw.mk

# Device Tree Source and Blob (DTS and DTB)
include scripts/dt.mk

# BOOT.bin
include scripts/boot_bin.mk
