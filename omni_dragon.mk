# Copyright (C) 2013-2017 The Android Open Source Project
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


# Inherit from those products. Most specific first.
$(call inherit-product, device/google/dragon/aosp_dragon.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common_tablet.mk)

# Omni specific board config
include device/google/dragon/BoardConfigOmni.mk

# Device specific config
include device/google/dragon/device-omni.mk

# Inherit device vendor (blobs)
$(call inherit-product-if-exists, vendor/google/dragon/dragon-vendor.mk)

PRODUCT_NAME := omni_dragon
PRODUCT_DEVICE := dragon
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel C
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=dragon \
    BUILD_FINGERPRINT=google/ryu/dragon:8.0.0/OPR6.170623.010/4283243:user/release-keys \
    PRIVATE_BUILD_DESC="ryu-user 8.0.0 OPR6.170623.010 4283243 release-keys"
