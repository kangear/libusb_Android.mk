LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

common_src :=\
	libusb/core.c \
	libusb/descriptor.c \
	libusb/io.c \
	libusb/sync.c \
	libusb/os/linux_usbfs.c \
	libusb/hotplug.c \
	libusb/os/poll_posix.c \
	libusb/os/linux_netlink.c \
	libusb/os/threads_posix.c
	
common_include :=\
	$(LOCAL_PATH)/ \
	$(LOCAL_PATH)/libusb \
	$(LOCAL_PATH)/android \
	$(LOCAL_PATH)/libusb/os
	
LOCAL_MODULE := libusb
LOCAL_SRC_FILES :=$(common_src)
LOCAL_SHARED_LIBRARIES += liblog

LOCAL_C_INCLUDES +=$(common_include)
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

common_src :=\
	libusb/core.c \
	libusb/descriptor.c \
	libusb/io.c \
	libusb/sync.c \
	libusb/os/linux_usbfs.c \
	libusb/hotplug.c \
	libusb/os/poll_posix.c \
	libusb/os/linux_netlink.c \
	libusb/os/threads_posix.c 
	
common_include :=\
	$(LOCAL_PATH)/ \
	$(LOCAL_PATH)/libusb \
	$(LOCAL_PATH)/android \
	$(LOCAL_PATH)/libusb/os
	
LOCAL_MODULE := libusb
LOCAL_SRC_FILES :=$(common_src)
LOCAL_SHARED_LIBRARIES += liblog

LOCAL_C_INCLUDES +=$(common_include)
include $(BUILD_STATIC_LIBRARY)

