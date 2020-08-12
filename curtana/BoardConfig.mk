#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6250-common
-include device/xiaomi/sm6250-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/curtana

# Inherit proprietary blobs
-include vendor/xiaomi/curtana/BoardConfigVendor.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := curtana

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml

# Display
TARGET_SCREEN_DENSITY := 440

# Kernel
TARGET_KERNEL_CONFIG := curtana_defconfig
