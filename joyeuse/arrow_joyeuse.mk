#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := joyeuse

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from joyeuse device
$(call inherit-product, device/xiaomi/joyeuse/device.mk)

# Inherit some common AOSP stuff.
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_WIFI_EXT := true
TARGET_INCLUDE_STOCK_ARCORE := true
$(call inherit-product, vendor/arrow/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := arrow_joyeuse
PRODUCT_DEVICE := joyeuse
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 9 Pro
PRODUCT_MANUFACTURER := Xiaomi

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=joyeuse \
    PRODUCT_NAME=joyeuse

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Build info
BUILD_FINGERPRINT := "google/coral/coral:10/QQ2A.200405.005/6254899:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="joyeuse-user 10 QKQ1.191215.002 V11.0.4.0.QJZMIXM release-keys"
