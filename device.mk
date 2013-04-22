$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, device/motorola/msm8960-common/msm8960.mk)

LOCAL_PATH := device/motorola/vanquish-common

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include
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

#wifi
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/config/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	$(LOCAL_PATH)/proprietary/wlanprima/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
	$(LOCAL_PATH)/proprietary/wlanprima/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini

#misc
PRODUCT_PROPERTY_OVERRIDES += \
	persist.fuse_sdcard=true \
	ro.usb.mtp_usbnet=0x2e32 \
	ro.usb.mtp_usbnet_adb=0x2e33 \
	ro.usb.cdrom=0x2e20 \
	ro.usb.ms=0x2e21 \
	ro.usb.ms_adb=0x2e22 \
	ro.usb.ptp=0x2e30 \
	ro.usb.ptp_adb=0x2e31 \
	ro.hdmi.enable=true \
	ro.product.model.exif=RAZR_HD

#wifi
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.qc.sub.rstrtlvl=3 \
	persist.sys.qc.sub.rdump.on=1 \
	persist.sys.qc.sub.rdump.max=20

# Radio and Telephony
PRODUCT_PROPERTY_OVERRIDES += \
	rild.libpath=/system/lib/libril-qc-qmi-1.so \
	ril.subscription.types=NV,RUIM \
	keyguard.no_require_sim=true \
	ro.use_data_netmgrd=true \
	ro.ril.transmitpower=true \
	persist.radio.apm_sim_not_pwdn=1 \
	persist.radio.call_type=1 \
	persist.audio.fluence.mode=endfire \
	persist.audio.vr.enable=false \
	ro.qc.sdk.audio.fluencetype=fluence \
	persist.audio.handset.mic=digital \
	ro.config.vc_call_vol_steps=7 \
	persist.timed.enable=true

# IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/melfas-ts.idc:system/usr/idc/melfas-ts.idc \
    $(LOCAL_PATH)/idc/evfwd.idc:system/usr/idc/evfwd.idc

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
