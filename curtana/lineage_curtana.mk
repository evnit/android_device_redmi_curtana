#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/curtana/device.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_curtana
PRODUCT_DEVICE := curtana
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 9S
PRODUCT_MANUFACTURER := Redmi

BUILD_FINGERPRINT := "Redmi/curtana_global/curtana:10/QKQ1.191215.002/V11.0.9.0.QJWMIXM:user/release-keys"
