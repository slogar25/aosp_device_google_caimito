#
# Copyright (c) 2024 StatiXOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common StatiX stuff.
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/google/caimito/aosp_komodo.mk)

# Parts
$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)
$(call inherit-product-if-exists, vendor/google/pixelparts/powershare/device.mk)
$(call inherit-product-if-exists, vendor/google/pixelparts/face/face.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := statix_komodo
PRODUCT_MODEL := Pixel 9 Pro XL
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Google

PRODUCT_OVERRIDE_FINGEPRINT := "google/komodo/komodo:15/AP3A.241105.008/12485168:user/release-keys"

BUILD_FINGERPRINT := $(PRODUCT_OVERRIDE_FINGEPRINT)
