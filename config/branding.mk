# Set all versions
HEXAGON_BUILD_TYPE ?= UNOFFICIAL
HEXAGON_BUILD_DATE := $(shell date -u +%Y%m%d-%H%M)
HEXAGON_VERSION := HexagonRom_$(HEXAGON_BUILD)-$(PLATFORM_VERSION)-$(HEXAGON_BUILD_DATE)-$(HEXAGON_BUILD_TYPE)
TARGET_PRODUCT_SHORT := $(subst hexagon_,,$(HEXAGON_BUILD))
ROM_FINGERPRINT := HexagonRom/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(HEXAGON_BUILD_DATE)

CUSTOM_PROPERTIES := \
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    org.hexagon.version=$(HEXAGON_VERSION) \
    org.hexagon.build_date=$(HEXAGON_BUILD_DATE) \
    org.hexagon.build_type=$(HEXAGON_BUILD_TYPE) \
    org.hexagon.fingerprint=$(ROM_FINGERPRINT)

PRODUCT_PROPERTY_OVERRIDES += $(CUSTOM_PROPERTIES)