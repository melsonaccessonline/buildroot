################################################################################
#
# mel package
#
################################################################################

MEL_VERSION = 1.0
MEL_SITE = package/mel
MEL_SITE_METHOD=local
MEL_INSTALL_TARGET:=YES
define MEL_BUILD_CMDS
    $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define MEL_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/mel  $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
