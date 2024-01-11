################################################################################
#
# mel
#
################################################################################

MEL_VERSION = 1.07.1
MEL_SITE = app.melsononline.uk:9080
MEL_DEPENDENCIES = host-flex
MEL_LICENSE = GPL-2.0+, LGPL-2.1+
MEL_LICENSE_FILES = COPYING COPYING.LIB
MEL_CPE_ID_VENDOR = gnu
MEL_CONF_ENV = MAKEINFO=true

MEL_AUTORECONF = YES

$(eval $(autotools-package))
