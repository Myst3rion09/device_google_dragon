# DRM
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.com.widevine.cachesize=16777216

# Camera flash
PRODUCT_PROPERTY_OVERRIDES += \
    camera.flash_off=0

# Grid recents
PRODUCT_PROPERTY_OVERRIDES += \
    ro.recents.grid=true

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/dragon/overlay-omni
