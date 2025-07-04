#
# Copyright (C) 2020 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from star device
$(call inherit-product, device/Infinix/X688B/device.mk)

# Inherit some common recovery stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := X688B
PRODUCT_NAME := twrp_X688B
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := X688B
PRODUCT_MANUFACTURER := Infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=X688B \
    PRODUCT_NAME=X688B \
    PRIVATE_BUILD_DESC="vnd_x688b_h659-user 11 RP1A.200720.011 205689 release-keys"

BUILD_FINGERPRINT := Infinix/X688B-RU/Infinix-X688B:11/RP1A.200720.011/211209V348:user/release-keys

