#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from f22 device
$(call inherit-product, device/samsung/f22/device.mk)

PRODUCT_DEVICE := f22
PRODUCT_NAME := omni_f22
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-E225F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="f22ins-user 12 SP1A.210812.016 E225FXXS9DWL1 release-keys"

BUILD_FINGERPRINT := samsung/f22ins/f22:12/SP1A.210812.016/E225FXXS9DWL1:user/release-keys
