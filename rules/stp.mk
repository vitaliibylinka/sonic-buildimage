# STP package
#
STP_VERSION = 1.0.0

STP = stp_$(STP_VERSION)_$(CONFIGURED_ARCH).deb
$(STP)_SRC_PATH = $(SRC_PATH)/sonic-stp
$(STP)_DEPENDS += $(LIBEVENT)
$(STP)_DEPENDS += $(LIBSWSSCOMMON_DEV)
$(STP)_RDEPENDS += $(LIBSWSSCOMMON)
SONIC_DPKG_DEBS += $(STP)

STP_DBG = stp-dbg_1.0.0_amd64.deb
$(eval $(call add_derived_package,$(STP),$(STP_DBG)))