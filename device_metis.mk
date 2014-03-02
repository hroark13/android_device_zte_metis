$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, vendor/cm/config/common.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/zte/metis/metis-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/zte/metis/overlay

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

## Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/root/charger:root/charger \
    $(LOCAL_PATH)/prebuilts/root/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/prebuilts/root/icon_ftm.png:root/icon_ftm.png \
    $(LOCAL_PATH)/prebuilts/root/init.ftm.rc:root/init.ftm.rc \
    $(LOCAL_PATH)/prebuilts/root/init.offcharge.rc:root/init.offcharge.rc \
    $(LOCAL_PATH)/prebuilts/root/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    $(LOCAL_PATH)/prebuilts/root/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
    $(LOCAL_PATH)/prebuilts/root/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
    $(LOCAL_PATH)/prebuilts/root/init.qcom.ftm.rc:root/init.qcom.ftm.rc \
    $(LOCAL_PATH)/prebuilts/root/init.qcom.lpm_boot.sh:root/init.qcom.lpm_boot.sh \
    $(LOCAL_PATH)/prebuilts/root/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/prebuilts/root/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/prebuilts/root/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
    $(LOCAL_PATH)/prebuilts/root/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/prebuilts/root/init.qcom.usb.sh:root/init.qcom.usb.sh \
    $(LOCAL_PATH)/prebuilts/root/init.recovery.qcom.rc:root/init.recovery.qcom.rc \
    $(LOCAL_PATH)/prebuilts/root/init.target.ftm.rc:root/init.target.ftm.rc \
    $(LOCAL_PATH)/prebuilts/root/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/prebuilts/root/logo.bmp:root/logo.bmp \
    $(LOCAL_PATH)/prebuilts/root/lpm.rc:root/lpm.rc \
    $(LOCAL_PATH)/prebuilts/root/ueventd.qcom.rc:root/ueventd.qcom.rc \
    $(LOCAL_PATH)/prebuilts/root/res/images/charger/battery_0.png:root/res/images/charger/battery_0.png \
    $(LOCAL_PATH)/prebuilts/root/res/images/charger/battery_10.png:root/res/images/charger/battery_10.png \
    $(LOCAL_PATH)/prebuilts/root/res/images/charger/battery_1.png:root/res/images/charger/battery_1.png \
    $(LOCAL_PATH)/prebuilts/root/res/images/charger/battery_2.png:root/res/images/charger/battery_2.png \
    $(LOCAL_PATH)/prebuilts/root/res/images/charger/battery_3.png:root/res/images/charger/battery_3.png \
    $(LOCAL_PATH)/prebuilts/root/res/images/charger/battery_4.png:root/res/images/charger/battery_4.png \
    $(LOCAL_PATH)/prebuilts/root/res/images/charger/battery_5.png:root/res/images/charger/battery_5.png \
    $(LOCAL_PATH)/prebuilts/root/res/images/charger/battery_6.png:root/res/images/charger/battery_6.png \
    $(LOCAL_PATH)/prebuilts/root/res/images/charger/battery_7.png:root/res/images/charger/battery_7.png \
    $(LOCAL_PATH)/prebuilts/root/res/images/charger/battery_8.png:root/res/images/charger/battery_8.png \
    $(LOCAL_PATH)/prebuilts/root/res/images/charger/battery_9.png:root/res/images/charger/battery_9.png \
    $(LOCAL_PATH)/prebuilts/root/res/images/charger/battery_charge.png:root/res/images/charger/battery_charge.png \
    $(LOCAL_PATH)/prebuilts/root/res/images/charger/battery_fail.png:root/res/images/charger/battery_fail.png \
    $(LOCAL_PATH)/prebuilts/root/res/images/charger/battery_full.png:root/res/images/charger/battery_full.png \
    $(LOCAL_PATH)/prebuilts/root/res/images/charger/black.png:root/res/images/charger/black.png \
    $(LOCAL_PATH)/prebuilts/root/sbin/usbconfig:root/sbin/usbconfig	



$(call inherit-product, build/target/product/full.mk)

PRODUCT_TAGS += dalvik.gc.type-precise

#LLVM for RenderScript
LLVM_ROOT_PATH := external/llvm

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml


#    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
#    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
#    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
#    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \



PRODUCT_PACKAGES += \
    applypatch \
    ast-mm-vdec-omx-test \
    com.android.future.usb.accessory \
    libdivxdrmdecrypt \
    libinvensense_hal \
    liblasic \
    liblinenoise \
    libmemalloc \
    libmllite \
    libmlplatform \
    libmmjpeg_interface \
    libmm-video \
    libmm-omxcore \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libOmxVidEnc \
    libOpenMAXAL \
    libOpenSLES \
    librs_jni \
    libstagefrighthw \
    mm-vdec-omx-property-mgr \
    mm-vdec-omx-test \
    mm-venc-omx-test \
    mm-venc-omx-test720p \
    mm-video-driver-test \
    mm-video-encdrv-test \
    libaudio-resampler \
    libdashplayer \
    libc2dcolorconvert

#    libmedia_jni \


# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# QCOM Display
PRODUCT_PACKAGES += \
    hwcomposer.msm8960 \
    gralloc.msm8960 \
    copybit.msm8960 \
    memtrack.msm8960 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils \
    libtilerenderer \
    libI420colorconvert

#Adreno200-AU_LINUX_ANDROID_JB_VANILLA_04.02.02.060.053
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/Adreno200-JB_VANILLA/system/app/ProfilerPlaybackTools.apk:system/app/ProfilerPlaybackTools.apk \
    $(LOCAL_PATH)/prebuilts/Adreno200-JB_VANILLA/system/bin/gpu_dcvsd:system/bin/gpu_dcvsd \
    $(LOCAL_PATH)/prebuilts/Adreno200-JB_VANILLA/system/etc/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
    $(LOCAL_PATH)/prebuilts/Adreno200-JB_VANILLA/system/etc/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
    $(LOCAL_PATH)/prebuilts/Adreno200-JB_VANILLA/system/etc/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
    $(LOCAL_PATH)/prebuilts/Adreno200-JB_VANILLA/system/etc/firmware/a300_pfp.fw:system/etc/firmware/a300_pfp.fw \
    $(LOCAL_PATH)/prebuilts/Adreno200-JB_VANILLA/system/etc/firmware/a300_pm4.fw:system/etc/firmware/a300_pm4.fw \
    $(LOCAL_PATH)/prebuilts/Adreno200-JB_VANILLA/system/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    $(LOCAL_PATH)/prebuilts/Adreno200-JB_VANILLA/system/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
    $(LOCAL_PATH)/prebuilts/Adreno200-JB_VANILLA/system/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    $(LOCAL_PATH)/prebuilts/Adreno200-JB_VANILLA/system/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    $(LOCAL_PATH)/prebuilts/Adreno200-JB_VANILLA/system/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    $(LOCAL_PATH)/prebuilts/Adreno200-JB_VANILLA/system/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    $(LOCAL_PATH)/prebuilts/Adreno200-JB_VANILLA/system/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    $(LOCAL_PATH)/prebuilts/Adreno200-JB_VANILLA/system/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    $(LOCAL_PATH)/prebuilts/Adreno200-JB_VANILLA/system/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    $(LOCAL_PATH)/prebuilts/Adreno200-JB_VANILLA/system/lib/egl/libplayback_adreno200.so:system/lib/egl/libplayback_adreno200.so \
    $(LOCAL_PATH)/prebuilts/Adreno200-JB_VANILLA/system/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    $(LOCAL_PATH)/prebuilts/Adreno200-JB_VANILLA/system/lib/libc2d2_a3xx.so:system/lib/libc2d2_a3xx.so \
    $(LOCAL_PATH)/prebuilts/Adreno200-JB_VANILLA/system/lib/libc2d2_z180.so:system/lib/libc2d2_z180.so \
    $(LOCAL_PATH)/prebuilts/Adreno200-JB_VANILLA/system/lib/libC2D2.so:system/lib/libC2D2.so \
    $(LOCAL_PATH)/prebuilts/Adreno200-JB_VANILLA/system/lib/libgsl.so:system/lib/libgsl.so \
    $(LOCAL_PATH)/prebuilts/Adreno200-JB_VANILLA/system/lib/libllvm-a3xx.so:system/lib/libllvm-a3xx.so \
    $(LOCAL_PATH)/prebuilts/Adreno200-JB_VANILLA/system/lib/libllvm-arm.so:system/lib/libllvm-arm.so \
    $(LOCAL_PATH)/prebuilts/Adreno200-JB_VANILLA/system/lib/libOpenCL.so:system/lib/libOpenCL.so \
    $(LOCAL_PATH)/prebuilts/Adreno200-JB_VANILLA/system/lib/libOpenVG.so:system/lib/libOpenVG.so \
    $(LOCAL_PATH)/prebuilts/Adreno200-JB_VANILLA/system/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    $(LOCAL_PATH)/prebuilts/Adreno200-JB_VANILLA/system/lib/libsc-a3xx.so:system/lib/libsc-a3xx.so \


## Bluetooth
PRODUCT_PACKAGES += \
    hciattach \
    hciconfig \
    hcitool \
    hdmid
	

# GPS
PRODUCT_PACKAGES += \
    gps.default

# Audio
PRODUCT_PACKAGES += \
    alsa.msm8960 \
    audio_policy.msm8960 \
    audio.primary.msm8960 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler \
    libaudioutils \
    libaudioparameter \
    tinymix

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/audio/etc/audio_effects.conf:system/etc/audio_effects.conf \
    $(LOCAL_PATH)/prebuilts/audio/etc/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/prebuilts/audio/etc/audio_policy_8064.conf:system/etc/audio_policy_8064.conf \
    $(LOCAL_PATH)/prebuilts/audio/etc/init.qcom.audio.sh:system/etc/init.qcom.audio.sh \
    $(LOCAL_PATH)/prebuilts/audio/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/prebuilts/audio/etc/snd_soc_msm/snd_soc_msm:system/etc/snd_soc_msm/snd_soc_msm \
    $(LOCAL_PATH)/prebuilts/audio/etc/snd_soc_msm/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x \
    $(LOCAL_PATH)/prebuilts/audio/etc/snd_soc_msm/snd_soc_msm_2x_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_2x_auxpcm \
    $(LOCAL_PATH)/prebuilts/audio/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3 \
    $(LOCAL_PATH)/prebuilts/audio/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3_auxpcm \
    $(LOCAL_PATH)/prebuilts/audio/etc/snd_soc_msm/snd_soc_msm_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_auxpcm \
    $(LOCAL_PATH)/prebuilts/audio/etc/snd_soc_msm/snd_soc_msm_Sitar:system/etc/snd_soc_msm/snd_soc_msm_Sitar \
    $(LOCAL_PATH)/prebuilts/audio/etc/snd_soc_msm/snd_soc_msm_Sitar_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_Sitar_auxpcm \
    $(LOCAL_PATH)/prebuilts/audio/etc/snd_soc_msm/snd_soc_msm_Taiko:system/etc/snd_soc_msm/snd_soc_msm_Taiko \
    $(LOCAL_PATH)/prebuilts/audio/etc/srs/srsmodels.lic:system/etc/srs/srsmodels.lic \
    $(LOCAL_PATH)/prebuilts/audio/etc/srs/srs_processing.cfg:system/etc/srs/srs_processing.cfg \
    $(LOCAL_PATH)/prebuilts/audio/lib/libacdbloader.so:system/lib/libacdbloader.so \
    $(LOCAL_PATH)/prebuilts/audio/lib/libaudcal.so:system/lib/libaudcal.so \
    $(LOCAL_PATH)/prebuilts/audio/lib/libcsd-client.so:system/lib/libcsd-client.so \
    $(LOCAL_PATH)/prebuilts/audio/lib/hw/audio.primary.mpq8064.so:system/lib/hw/audio.primary.mpq8064.so \
    $(LOCAL_PATH)/prebuilts/audio/lib/hw/audio_policy.mpq8064.so:system/lib/hw/audio_policy.mpq8064.so



# Camera
#PRODUCT_PACKAGES += \
#    camera.msm8960

## liblights
PRODUCT_PACKAGES += \
    lights.msm8960

PRODUCT_PACKAGES += \
    libwpa_client \
    libnetcmdiface

# Extra packages
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    Screenshot \
    Torch \
    Trebuchet

#    Camera \

# Webkit
PRODUCT_PACKAGES += \
    libwebcore

# iptables
PRODUCT_PACKAGES += \
    ip6tables \
    iptables


#Touch Screen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/touchscreen/usr/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    $(LOCAL_PATH)/prebuilts/touchscreen/usr/idc/cysp-touchscreen.idc:system/usr/idc/cysp-touchscreen.idc \
    $(LOCAL_PATH)/prebuilts/touchscreen/usr/idc/Fts-touchscreen.idc:system/usr/idc/Fts-touchscreen.idc \
    $(LOCAL_PATH)/prebuilts/touchscreen/usr/idc/syna-touchscreen.idc:system/usr/idc/syna-touchscreen.idc

# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/wifi/etc/firmware/wlan/prima/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/prebuilts/wifi/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/prebuilts/wifi/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    $(LOCAL_PATH)/prebuilts/wifi/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh


#misc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/misc/lib/libnetcmdiface.so:system/lib/libnetcmdiface.so \
    $(LOCAL_PATH)/prebuilts/misc/etc/hcidump.sh:system/etc/hcidump.sh \
    $(LOCAL_PATH)/prebuilts/misc/etc/init.ath3k.bt.sh:system/etc/init.ath3k.bt.sh \
    $(LOCAL_PATH)/prebuilts/misc/etc/init.goldfish.sh:system/etc/init.goldfish.sh \
    $(LOCAL_PATH)/prebuilts/misc/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/prebuilts/misc/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    $(LOCAL_PATH)/prebuilts/misc/etc/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
    $(LOCAL_PATH)/prebuilts/misc/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/prebuilts/misc/etc/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh \
    $(LOCAL_PATH)/prebuilts/misc/etc/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
    $(LOCAL_PATH)/prebuilts/misc/etc/init.qcom.post_boot_ftm.sh:system/etc/init.qcom.post_boot_ftm.sh \
    $(LOCAL_PATH)/prebuilts/misc/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/prebuilts/misc/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    $(LOCAL_PATH)/prebuilts/misc/etc/init.qcom.thermald_conf.sh:system/etc/init.qcom.thermald_conf.sh \
    $(LOCAL_PATH)/prebuilts/misc/etc/init.wlanprop.sh:system/etc/init.wlanprop.sh \
    $(LOCAL_PATH)/prebuilts/misc/etc/usf_post_boot.sh:system/etc/usf_post_boot.sh


PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.enable_key_repeat=true
    ro.sf.lcd_density=240
    wifi.interface=wlan0
#    persist.webview.provider=classic

ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_metis
PRODUCT_DEVICE := metis

