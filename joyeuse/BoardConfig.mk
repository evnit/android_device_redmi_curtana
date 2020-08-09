#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6250-common
-include device/xiaomi/sm6250-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/joyeuse

# Inherit proprietary blobs
-include vendor/xiaomi/joyeuse/BoardConfigVendor.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := joyeuse

# Display
TARGET_SCREEN_DENSITY := 430

# Kernel
TARGET_KERNEL_CONFIG := vendor/joyeuse_defconfig
