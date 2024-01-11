################################################################################
#
# mel package
#
################################################################################

MEL_VERSION = 1.0
MEL_SITE = package/mel/src
MEL_SITE_METHOD=local#
MEL_INSTALL_TARGET:=YES
define MEL_BUILD_CMDS
    $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D) all
endef

define MEL_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/mel  $(TARGET_DIR)/bin
endef
define MEL_PERMISSIONS
       /bin/mel f 4755 0 0 - - - - - 
endef

$(eval $(generic-package))
