# Platform
TARGET_BOOTLOADER_BOARD_NAME := mt6753

# Legacy blobs
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true

# Images
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_BOARD_PLATFORM := mt6753
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_CORTEX_A53 := true
TARGET_BOARD_PLATFORM_GPU := mali-t720mp3

# Architecture Extensions
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_VFP := true
