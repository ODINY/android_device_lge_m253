# Full base
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Needed stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit some common CM stuff.
$(call inherit-product-if-exists, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device_m253.mk)

# Device display
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# Device identifier
PRODUCT_BRAND := lge
PRODUCT_DEVICE := m253
PRODUCT_MANUFACTURER := LGE
PRODUCT_MODEL := Lge K430ds
PRODUCT_NAME := lineage_m253
PRODUCT_RELEASE_NAME := m253
PRODUCT_RESTRICT_VENDOR_FILES := false
    


#$(call inherit-product-if-exists, vendor/lge/hammerhead/device-vendor.mk)



