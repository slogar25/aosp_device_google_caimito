#
# Copyright 2021 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

TARGET_LINUX_KERNEL_VERSION := 6.1

USE_SWIFTSHADER := false
BOARD_USES_SWIFTSHADER := false

DEVICE_CODENAME := komodo
DEVICE_PATH := device/google/caimito
VENDOR_PATH := vendor/google/komodo

# Statix Shit
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

# Parts
$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)
$(call inherit-product-if-exists, vendor/google/pixelparts/powershare/device.mk)

# Normal Shit
$(call inherit-product, device/google/zumapro/aosp_common.mk)
$(call inherit-product, device/google/caimito/komodo_generic.mk)

# Boot Animation
TARGET_SCREEN_HEIGHT := 2992
TARGET_SCREEN_WIDTH := 1344

PRODUCT_NAME := statix_komodo
PRODUCT_DEVICE := komodo
PRODUCT_MODEL := Pixel 9 Pro XL
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Google

DEVICE_MANIFEST_FILE := \
	device/google/caimito/manifest.xml

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="komodo-user 15 AP3A.241105.008 12485168 release-keys" \
    BuildFingerprint=google/komodo/komodo:15/AP3A.241105.008/12485168:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)
