$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Device product elements
include $(LOCAL_PATH)/product/*.mk

# Device specific overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

#prebuilt kernel
TARGET_PREBUILT_KERNEL := device/lge/m253/prebuilt/kernel
	LOCAL_KERNEL := device/lge/m253/prebuilt/kernel

PRODUCT_COPY_FILES := \
	$(LOCAL_KERNEL):kernel

# Ramdisk
PRODUCT_COPY_FILES += \
	device/lge/m253/rootdir/factory_init.project.rc:root/factory_init.project.rc \
	device/lge/m253/rootdir/factory_init.rc:root/factory_init.rc \
	device/lge/m253/rootdir/fstab.m253:root/fstab.m253 \
	device/lge/m253/rootdir/fstab.mt6735:root/fstab.mt6735 \
	device/lge/m253/rootdir/fstab.mt6753:root/fstab.mt6753 \
	device/lge/m253/rootdir/init.aee.rc:root/init.aee.rc \
	device/lge/m253/rootdir/init.common_svc.rc:root/init.common_svc.rc \
	device/lge/m253/rootdir/init.lge.atd.rc:root/init.lge.atd.rc \
	device/lge/m253/rootdir/init.lge.early.rc:root/init.lge.early.rc \
	device/lge/m253/rootdir/init.lge.fs.rc:root/init.lge.fs.rc \
	device/lge/m253/rootdir/init.lge.log.rc:root/init.lge.log.rc \
	device/lge/m253/rootdir/init.lge.power.rc:root/init.lge.power.rc \
	device/lge/m253/rootdir/init.lge.rc:root/init.lge.rc \
	device/lge/m253/rootdir/init.lge.usb.default.sh:root/init.lge.usb.default.sh \
	device/lge/m253/rootdir/init.lge.usb.rc:root/init.lge.usb.rc \
	device/lge/m253/rootdir/init.lge.usb.sh:root/init.lge.usb.sh \
	device/lge/m253/rootdir/init.m253.rc:root/init.m253.rc \
	device/lge/m253/rootdir/init.m253_core.rc:root/init.m253_core.rc \
	device/lge/m253/rootdir/init.m253_product.rc:root/init.m253_product.rc \
	device/lge/m253/rootdir/init.mal.rc:root/init.mal.rc \
	device/lge/m253/rootdir/init.modem.rc:root/init.modem.rc \
	device/lge/m253/rootdir/init.mt6735.rc:root/init.mt6735.rc \
	device/lge/m253/rootdir/init.mt6735_core.rc:root/init.mt6735_core.rc \
	device/lge/m253/rootdir/init.project.rc:root/init.project.rc \
	device/lge/m253/rootdir/init.recovery.mt6735.rc:root/init.recovery.mt6735.rc \
	device/lge/m253/rootdir/init.trace.rc:root/init.trace.rc \
	device/lge/m253/rootdir/init.usb.rc:root/init.usb.rc \
	device/lge/m253/rootdir/init.volte.rc:root/init.volte.rc \
	device/lge/m253/rootdir/init.xlog.rc:root/init.xlog.rc \
	device/lge/m253/rootdir/init.zygote32.rc:root/init.zygote32.rc \
	device/lge/m253/rootdir/meta_init.modem.rc:root/meta_init.modem.rc \
	device/lge/m253/rootdir/meta_init.project.rc:root/meta_init.project.rc \
	device/lge/m253/rootdir/meta_init.rc:root/meta_init.rc \
	device/lge/m253/rootdir/set_emmc_size.sh:root/set_emmc_size.sh \
	device/lge/m253/rootdir/ueventd.m253.rc:root/ueventd.m253.rc \
	device/lge/m253/rootdir/ueventd.mt6735.rc:root/ueventd.mt6735.rc \
	device/lge/m253/rootdir/ueventd.rc:root/ueventd.rc 

# Dalvik heap configurations
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-1536-dalvik-heap.mk)

# Call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-1536-hwui-memory.mk)

# Vendor product configurations
$(call inherit-product-if-exists, vendor/lge/m253/m253-vendor.mk)

ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.secure=0 \
	ro.adb.secure=0 \
	ro.debuggable=1 \
	ro.allow.mock.location=1 \
	persist.service.acm.enable=0 \
	ro.oem_unlock_supported=1 \
	ro.mount.fs=EXT4 \
	camera.disable_zsl_mode=1 \
	persist.sys.usb.config=mtp

