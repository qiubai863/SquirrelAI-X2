#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from TC625 device
$(call inherit-product, device/boe/TC625/device.mk)

PRODUCT_DEVICE := TC625
PRODUCT_NAME := omni_TC625
PRODUCT_BRAND := BOE
PRODUCT_MODEL := TC625
PRODUCT_MANUFACTURER := boe

PRODUCT_GMS_CLIENTID_BASE := android-boe

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="TC625-user 13 TKQ1.230213.001 09361311 release-keys"

BUILD_FINGERPRINT := BOE/TC625/TC625:13/TKQ1.230213.001/09361311:user/release-keys
