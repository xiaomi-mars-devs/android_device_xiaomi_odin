#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/odin

# Inherit from sm8350-common
include device/xiaomi/sm8350-common/BoardConfigCommon.mk

# Board
TARGET_BOOTLOADER_BOARD_NAME := odin

# Kernel
TARGET_KERNEL_CONFIG += vendor/odin_QGKI.config

# Kernel modules
BOOT_KERNEL_MODULES := \
    fts_touch_spi.ko \
    hwid.ko \
    msm_drm.ko \
    xiaomi_touch.ko
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(BOOT_KERNEL_MODULES)

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 114001162240

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Include proprietary files
include vendor/xiaomi/odin/BoardConfigVendor.mk
