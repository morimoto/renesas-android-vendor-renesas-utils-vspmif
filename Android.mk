LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)


LOCAL_C_INCLUDES:= \
    $(LOCAL_PATH)/vspm_if-module/files/vspm_if/include \
    hardware/renesas/mmngr/libmmngr/mmngr/include

LOCAL_SRC_FILES := \
    vspm_if-module/files/vspm_if/if/vspm_api.c \
    vspm_if-module/files/vspm_if/if/vspm_api_fdp.c \
    vspm_if-module/files/vspm_if/if/vspm_api_vsp.c \

LOCAL_MODULE:= libvspmif

LOCAL_SHARED_LIBRARIES := libmmngr

include $(BUILD_SHARED_LIBRARY)
