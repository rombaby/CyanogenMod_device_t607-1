USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/Orgtec/Wa1/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mt6752
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := Wa1

BOARD_KERNEL_CMDLINE := bootopt=64S3,32S1,32S1
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/Orgtec/Wa1/kernel

#BOARD_HAS_NO_SELECT_BUTTON := true
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"fontcn36_22x56.h\"
BOARD_USE_CUSTOM_RECOVERY_FONT := \"fonten44_26x71.h\"
#mtk backup
#BOARD_RECOVERY_MTK := true
#cwm Recovery
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TARGET_RECOVERY_FSTAB := device/Orgtec/Wa1/recovery.fstab

#philz Recovery
#分辨率
DEVICE_RESOLUTION := 1080x1920
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920
#BORAD_UI_CHINESE := true
#USB挂载
BOARD_UMS_LUNFILE := "/sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun0/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file"
#屏幕背光亮度
TARGET_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TARGET_MAX_BRIGHTNESS := 255
# NO misc
# BOARD_HAS_NO_MISC_PARTITION := true
#ext4
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
# NO select
BOARD_HAS_SLOW_STORAGE := true

#touch
BOARD_RECOVERY_SWIPE := true
#使用虚拟按键，非必须
RECOVERY_USE_VIRTUAL_KEY := true

#修复双清缓慢
BOARD_NO_SECURE_DISCARD := true
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
#KERNEL_EXFAT_MODULE_NAME := "exfat"
#/data/media/
#RECOVERY_SDCARD_ON_DATA:= true
#BOARD_HAS_NO_REAL_SDCARD:= true
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
ro.allow.mock.location=1 \
persist.mtk.aee.aed=on \
ro.debuggable=1 \
persist.service.acm.enable=0 \
persist.sys.usb.config=mass_storage \
ro.mount.fs=EXT4
