#
# This policy configuration will be used by all qcom products
# that inherit from CypherOS
#

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/aoscp/sepolicy/qcom/private
	
ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/aoscp/sepolicy/qcom/dynamic
else
BOARD_SEPOLICY_DIRS += \
    device/aoscp/sepolicy/qcom/dynamic \
	device/aoscp/sepolicy/qcom/common \
    device/aoscp/sepolicy/qcom/$(TARGET_BOARD_PLATFORM)
endif
