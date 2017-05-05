# Inline kernel
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/aarch64/aarch64-linux-android-4.9/bin
KERNEL_TOOLCHAIN_PREFIX := aarch64-linux-android-
TARGET_KERNEL_SOURCE := kernel/google/dragon
TARGET_KERNEL_CONFIG := dragon_defconfig
BOARD_KERNEL_IMAGE_NAME := Image.fit

# Ignore DSPManager's audio_effects config file
TARGET_USE_DEVICE_AUDIO_EFFECTS_CONF := true
TARGET_IGNORE_VENDOR_AUDIO_EFFECTS_CONF := true

# Enable vendor image symlink
BOARD_NEEDS_VENDORIMAGE_SYMLINK := true

# Disable OMX video crop
TARGET_DISABLE_OMX_VIDEO_CROP_OUTPUT := true

# TWRP
TW_THEME := landscape_hdpi
TW_NO_SCREEN_TIMEOUT := true
TW_INCLUDE_MTP := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TW_BRIGHTNESS_PATH := /sys/class/backlight/lpm102a188a-backlight/brightness
TW_CUSTOM_BATTERY_PATH := /sys/class/power_supply/bq27742-0
TW_INCLUDE_CRYPTO := true
TARGET_RECOVERY_DEVICE_MODULES := fwtool
TW_INCLUDE_NTFS_3G := true
