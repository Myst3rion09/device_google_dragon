# Camera flash prop
PRODUCT_PROPERTY_OVERRIDES += \
    camera.flash_off=0

# Facelock props
PRODUCT_PROPERTY_OVERRIDES += \
    ro.facelock.black_timeout=700 \
    ro.facelock.det_timeout=2500 \
    ro.facelock.rec_timeout=3500 \
    ro.facelock.est_max_time=500

# Mobile data provision prop
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.android.prov_mobiledata=false

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/dragon/overlay-slim
