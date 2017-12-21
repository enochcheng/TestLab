LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

# We only want this apk build for tests.
LOCAL_MODULE_TAGS := debug optional tests

# Include all test java files.
LOCAL_SRC_FILES := \
    $(call all-java-files-under, src/main)

LOCAL_STATIC_JAVA_LIBRARIES := android-support-test

LOCAL_MODULE := android-xml-run-listener
LOCAL_CERTIFICATE := platform
LOCAL_JACK_ENABLED := disabled
LOCAL_DEX_PREOPT := false

include $(BUILD_STATIC_JAVA_LIBRARY)
