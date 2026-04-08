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
$(call inherit-product, vendor/otrp/config/common.mk)

# Inherit from NOTE_23 device
$(call inherit-product, device/ssh/NOTE_23/device.mk)

PRODUCT_DEVICE := NOTE_23
PRODUCT_NAME := omni_NOTE_23
PRODUCT_BRAND := VGO_TEL
PRODUCT_MODEL := NOTE 23
PRODUCT_MANUFACTURER := ssh

PRODUCT_GMS_CLIENTID_BASE := android-ssh

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="NOTE_23_V02-user 12 SP1A.210812.016 1750223133 release-keys"

BUILD_FINGERPRINT := VGO_TEL/NOTE_23_V02/NOTE_23:14/UP1A.231005.007/1750220834:user/release-keys
