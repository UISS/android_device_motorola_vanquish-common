$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, device/motorola/msm8960-common/msm8960.mk)

LOCAL_PATH := device/motorola/vanquish-common

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

#media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/config/media_profiles.xml:system/etc/media_profiles.xml \
	$(LOCAL_PATH)/config/media_codecs.xml:system/etc/media_codecs.xml

#audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x

#config
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/config/vold.fstab:system/etc/vold.fstab

# IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/melfas-ts.idc:system/usr/idc/melfas-ts.idc \
    $(LOCAL_PATH)/idc/evfwd.idc:system/usr/idc/evfwd.idc

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
