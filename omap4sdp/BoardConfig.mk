USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/kindle/omap4sdp/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := omap4sdp

BOARD_KERNEL_CMDLINE := console=ttyO2,115200n8 mem=463M@0x80000000 init=/init vram=5M omapfb.vram=0:5M
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 00002048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/kindle/omap4sdp/kernel

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true