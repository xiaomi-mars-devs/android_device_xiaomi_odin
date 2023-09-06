#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from odin device
$(call inherit-product, device/xiaomi/odin/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := odin
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 2106118C
PRODUCT_NAME := lineage_odin

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
