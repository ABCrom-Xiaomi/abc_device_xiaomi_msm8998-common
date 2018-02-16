LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.biometrics.fingerprint@2.1-service.msm8998
LOCAL_INIT_RC := android.hardware.biometrics.fingerprint@2.1-service.msm8998.rc
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := \
    BiometricsFingerprint.cpp \
    service.cpp

LOCAL_SHARED_LIBRARIES := \
    libbase \
    libhardware \
    liblog \
    libhidlbase \
    libhidltransport \
    libhwbinder \
    libutils \
    android.hardware.biometrics.fingerprint@2.1

include $(BUILD_EXECUTABLE)