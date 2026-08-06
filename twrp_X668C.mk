#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
DEVICE_PATH := device/infinix/X668C
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from itel-S665L device
$(call inherit-product, device/infinix/X668C/device.mk)




PRODUCT_DEVICE := X668C
PRODUCT_NAME := twrp_X668C
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X668C
PRODUCT_MANUFACTURER := infinix
PRODUCT_RELEASE_NAME := Infinix X668C


PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="X668C-user 12 SP1A.210812.016 376 release-keys"

BUILD_FINGERPRINT := Infinix/F162/Infinix-X668C:12/SP1A.210812.016/GL-V179-20221108:user/release-keys