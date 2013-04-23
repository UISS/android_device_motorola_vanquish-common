$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, device/motorola/msm8960-common/msm8960.mk)

LOCAL_PATH := device/motorola/vanquish-common

# IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/melfas-ts.idc:system/usr/idc/melfas-ts.idc \
    $(LOCAL_PATH)/idc/evfwd.idc:system/usr/idc/evfwd.idc

# keylayouts
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
	$(LOCAL_PATH)/keylayout/Button_Jack.kl:system/usr/keylayout/Button_Jack.kl \
	$(LOCAL_PATH)/keylayout/cyttsp-i2c.kl:system/usr/keylayout/cyttsp-i2c.kl \
	$(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	$(LOCAL_PATH)/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
	$(LOCAL_PATH)/keylayout/keypad_8960_liquid.kl:system/usr/keylayout/keypad_8960_liquid.kl \
	$(LOCAL_PATH)/keylayout/philips_remote_ir.kl:system/usr/keylayout/philips_remote_ir.kl \
	$(LOCAL_PATH)/keylayout/samsung_remote_ir.kl:system/usr/keylayout/samsung_remote_ir.kl \
	$(LOCAL_PATH)/keylayout/ue_rf4ce_remote.kl:system/usr/keylayout/ue_rf4ce_remote.kl

# Keychars
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keychars/evfwd.kcm:system/usr/keychars/evfwd.kcm \
    $(LOCAL_PATH)/keychars/kbd_ar_basic.kcm:system/usr/keychars/kbd_ar_basic.kcm \
    $(LOCAL_PATH)/keychars/kbd_br_abnt2.kcm:system/usr/keychars/kbd_br_abnt2.kcm \
    $(LOCAL_PATH)/keychars/kbd_ca_fr.kcm:system/usr/keychars/kbd_ca_fr.kcm \
    $(LOCAL_PATH)/keychars/kbd_de_basic.kcm:system/usr/keychars/kbd_de_basic.kcm \
    $(LOCAL_PATH)/keychars/kbd_dk_basic.kcm:system/usr/keychars/kbd_dk_basic.kcm \
    $(LOCAL_PATH)/keychars/kbd_es_basic.kcm:system/usr/keychars/kbd_es_basic.kcm \
    $(LOCAL_PATH)/keychars/kbd_fi_basic.kcm:system/usr/keychars/kbd_fi_basic.kcm \
    $(LOCAL_PATH)/keychars/kbd_fr_basic.kcm:system/usr/keychars/kbd_fr_basic.kcm \
    $(LOCAL_PATH)/keychars/kbd_gb_basic.kcm:system/usr/keychars/kbd_gb_basic.kcm \
    $(LOCAL_PATH)/keychars/kbd_gr_basic.kcm:system/usr/keychars/kbd_gr_basic.kcm \
    $(LOCAL_PATH)/keychars/kbd_il_basic.kcm:system/usr/keychars/kbd_il_basic.kcm \
    $(LOCAL_PATH)/keychars/kbd_it_basic.kcm:system/usr/keychars/kbd_it_basic.kcm \
    $(LOCAL_PATH)/keychars/kbd_latam_basic.kcm:system/usr/keychars/kbd_latam_basic.kcm \
    $(LOCAL_PATH)/keychars/kbd_no_basic.kcm:system/usr/keychars/kbd_no_basic.kcm \
    $(LOCAL_PATH)/keychars/kbd_pl_basic.kcm:system/usr/keychars/kbd_pl_basic.kcm \
    $(LOCAL_PATH)/keychars/kbd_ru_basic.kcm:system/usr/keychars/kbd_ru_basic.kcm \
    $(LOCAL_PATH)/keychars/kbd_se_basic.kcm:system/usr/keychars/kbd_se_basic.kcm \
    $(LOCAL_PATH)/keychars/kbd_us_basic.kcm:system/usr/keychars/kbd_us_basic.kcm \
    $(LOCAL_PATH)/keychars/kbd_us_intl.kcm:system/usr/keychars/kbd_us_intl.kcm \
    $(LOCAL_PATH)/keychars/usb_keyboard_102_en_us.kcm:system/usr/keychars/usb_keyboard_102_en_us.kcm

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
