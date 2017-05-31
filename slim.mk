#
# Copyright 2017 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := dragon

# Boot animation
TARGET_SCREEN_HEIGHT := 1800
TARGET_SCREEN_WIDTH := 2560

# Inherit some common Slim stuff.
$(call inherit-product, vendor/slim/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/dragon/aosp_dragon.mk)

# Inerhit slim device configuration
-include device/google/dragon/device-dragon.mk

# Inherit device vendor (blobs)
$(call inherit-product-if-exists, vendor/google/dragon/dragon-vendor.mk)

PRODUCT_DEVICE := dragon
PRODUCT_NAME := slim_dragon
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel C
PRODUCT_MANUFACTURER := google
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=dragon \
    BUILD_FINGERPRINT=google/ryu/dragon:7.1.2/N2G47O/3852959:user/release-keys \
    PRIVATE_BUILD_DESC="ryu-user 7.1.2 N2G47O 3852959 release-keys"
