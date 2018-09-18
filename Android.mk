LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)


LOCAL_C_INCLUDES:= \
    $(LOCAL_PATH)/vspm_if-module/files/vspm_if/include \
    hardware/renesas/mmngr/libmmngr/mmngr/include \
    hardware/renesas/vspm/vspm-module/files/vspm/include/ \
    hardware/renesas/vspmif_km/vspm_if-module/files/vspm_if/include/ \
    hardware/renesas/mmngr_km/mmngr_drv/mmngr/mmngr-module/files/mmngr/include

LOCAL_SRC_FILES := \
    vspm_if-module/files/vspm_if/if/vspm_api.c \
    vspm_if-module/files/vspm_if/if/vspm_api_fdp.c \
    vspm_if-module/files/vspm_if/if/vspm_api_vsp.c \

LOCAL_MODULE:= libvspmif
LOCAL_PROPRIETARY_MODULE := true

LOCAL_SHARED_LIBRARIES := libmmngr

LOCAL_MULTILIB := 64

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES:= \
    $(LOCAL_PATH)/vspm_if-module/files/vspm_if/include \
    hardware/renesas/mmngr/libmmngr/mmngr/include \
    hardware/renesas/vspm/vspm-module/files/vspm/include/ \
    hardware/renesas/mmngr_km/mmngr_drv/mmngr/mmngr-module/files/mmngr/include

LOCAL_MODULE := vspm_tp
LOCAL_PROPRIETARY_MODULE := true

LOCAL_SHARED_LIBRARIES := libmmngr libvspmif

LOCAL_SRC_FILES := \
    vspm_if-tp-user/files/vspm_if/vspm_tp_lossy.c

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES:= \
    $(LOCAL_PATH)/vspm_if-module/files/vspm_if/include \
    hardware/renesas/mmngr/libmmngr/mmngr/include \
    hardware/renesas/vspm/vspm-module/files/vspm/include/ \
    hardware/renesas/mmngr_km/mmngr_drv/mmngr/mmngr-module/files/mmngr/include

LOCAL_MODULE := fdpm_tp
LOCAL_PROPRIETARY_MODULE := true

LOCAL_SHARED_LIBRARIES := libmmngr libvspmif

LOCAL_SRC_FILES := \
    vspm_if-tp-user/files/vspm_if/fdpm_tp.c

include $(BUILD_EXECUTABLE)
