LOCAL_PATH:= $(call my-dir)

# ========================================================
# madwimax
# ========================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	protocol.c logging.c tap_dev.c wimax.c \

LOCAL_SHARED_LIBRARIES += \
	libusb \
	libc

#LOCAL_CFLAGS += \
	-without-man-pages

LOCAL_C_INCLUDES += \
	external/libusb/libusb \
	external/madwimax/include \
	$(LOCAL_PATH)


LOCAL_SHARED_LIBRARIES += libusb 


LOCAL_MODULE := madwimax
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
include $(BUILD_EXECUTABLE)
