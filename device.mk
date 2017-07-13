#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/samsung/a7xltechn

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Proprietary files
$(call inherit-product, vendor/samsung/a7xltechn/a7xltechn-vendor.mk) # TODO: use vendor files

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    # $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \ 
    $(LOCAL_PATH)/keylayout/Synaptics_RMI4_TouchPad_Sensor.idc:system/usr/idc/Synaptics_RMI4_TouchPad_Sensor.idc \
    $(LOCAL_PATH)/keylayout/Synaptics_HID_TouchPad.idc:system/usr/idc/Synaptics_HID_TouchPad.idc \
    $(LOCAL_PATH)/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl \
    $(LOCAL_PATH)/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Audio Caliberations
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/acdb/Bluetooth_cal.acdb:system/etc/Bluetooth_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/General_cal.acdb:system/etc/General_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/Global_cal.acdb:system/etc/Global_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/Handset_cal.acdb:system/etc/Handset_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/Hdmi_cal.acdb:system/etc/Hdmi_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/Headset_cal.acdb:system/etc/Headset_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/Speaker_cal.acdb:system/etc/Speaker_cal.acdb \
    $(LOCAL_PATH)/audio/Tfa9895.cnt:system/etc/Tfa9897.cnt

# Wifi
 PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# Display
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Inherit from msm8939-common
$(call inherit-product, device/samsung/msm8939-common/msm8939.mk)
