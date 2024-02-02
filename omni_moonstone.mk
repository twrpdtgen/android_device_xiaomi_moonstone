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

# Inherit from moonstone device
$(call inherit-product, device/xiaomi/moonstone/device.mk)

PRODUCT_DEVICE := moonstone
PRODUCT_NAME := omni_moonstone
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X5
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_moonstone-eng 99.87.36 SP2A.220405.004 eng.erwin.20231228.015257 test-keys"

BUILD_FINGERPRINT := POCO/twrp_moonstone/moonstone:99.87.36/SP2A.220405.004/erwin12280151:eng/test-keys
