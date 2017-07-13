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

DEVICE_PATH := device/samsung/a7xltechn

# Inherit from samsung msm8939-common
include device/samsung/msm8939-common/BoardConfigCommon.mk

# Kernel
TARGET_KERNEL_CONFIG := cyanogenmod_a7xltechn_defconfig # TODO:mod?
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/a7xltechn

# Partition Info TODO:size right?
BOARD_BOOTIMAGE_PARTITION_SIZE := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2587717795
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12369489428
BOARD_CACHEIMAGE_PARTITION_SIZE := 202375168
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_PERSISTIMAGE_PARTITION_SIZE := 4089446

# File System
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USES_MMC_UTILS := true
BOARD_HAS_NO_MISC_PARTITION := true

# Camera
TARGET_PROVIDES_CAMERA_HAL := true
USE_DEVICE_SPECIFIC_CAMERA := true

# inherit from the proprietary version
include vendor/samsung/a7xltechn/BoardConfigVendor.mk # TODO:use vendor files
