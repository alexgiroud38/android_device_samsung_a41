#
# Copyright (C) 2023 The LineageOS Project
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

DEVICE_PATH := device/samsung/a41xx

DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

# call the common setup
$(call inherit-product, device/samsung/mt6768-common/mt6768-common.mk)

# TODO : Will be created when we will pull vendor files
# call the proprietary setup
$(call inherit-product, vendor/samsung/a41xx/a41xx-vendor.mk)

# TODO : Will be created when we will pull vendor files
# Init files
PRODUCT_PACKAGES += \
    init.a41xx.rc

# TODO : Find this file
# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(DEVICE_PATH)/configs/audio/audio_platform_info_diff.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_diff.xml \

# TODO : Find this file
# Fingerprint
PRODUCT_PACKAGES += \
    SamsungUdfpsHandler.a41xx

# TODO : Find this file
# Sensors
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# TODO : Find this file
PRODUCT_PACKAGES += \
    sensors.a41xx