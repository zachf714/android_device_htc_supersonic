# Inherit some common CM stuff, but the smaller version
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit AOSP device configuration for supersonic.
$(call inherit-product, device/htc/supersonic/full_supersonic.mk)

# Release name
PRODUCT_RELEASE_NAME := supersonic

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

#
# Setup device specific product configuration.
#
PRODUCT_DEVICE := supersonic
PRODUCT_NAME := cm_supersonic
PRODUCT_BRAND := sprint
PRODUCT_MODEL := PC36100
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_supersonic BUILD_FINGERPRINT=sprint/htc_supersonic/supersonic:2.3.5/GRJ90/239674.3:user/release-keys PRIVATE_BUILD_DESC="4.67.651.3 CL239674 release-keys"
