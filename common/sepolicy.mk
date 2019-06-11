#
# This policy configuration will be used by all products that
# inherit from CypherOS
#

ifeq ($(TARGET_LUNA_PLATFORM_SEPOLICY),true)
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    device/aoscp/sepolicy/common/public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/aoscp/sepolicy/common/private

ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/aoscp/sepolicy/common/dynamic
else
BOARD_SEPOLICY_DIRS += \
    device/aoscp/sepolicy/common/dynamic
    device/aoscp/sepolicy/common/vendor
endif
endif
