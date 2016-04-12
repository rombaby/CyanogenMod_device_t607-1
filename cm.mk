## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := Wa1

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/Orgtec/Wa1/device_Wa1.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Wa1
PRODUCT_NAME := cm_Wa1
PRODUCT_BRAND := Orgtec
PRODUCT_MODEL := Wa1
PRODUCT_MANUFACTURER := Orgtec
