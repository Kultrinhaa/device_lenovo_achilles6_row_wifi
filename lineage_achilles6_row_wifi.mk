#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from achilles6_row_wifi device
$(call inherit-product, device/lenovo/achilles6_row_wifi/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := achilles6_row_wifi
PRODUCT_NAME := lineage_achilles6_row_wifi
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo Tab M10 FHD Plus 2 Gen
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_achilles6_row_wifi-user 10 QP1A.190711.020 TB-X606F_U release-keys" \
    PRODUCT_NAME=LenovoTB-X606F

BUILD_FINGERPRINT := Lenovo/LenovoTB-X606F/X606F:10/QP1A.190711.020/TB-X606F_USR_S300660_2206131545_V9.56_BMP_ROW:user/release-keys
