
##############################################################
#
# TARGET-TRACKING
#
##############################################################

TARGET_TRACKING_VERSION = '7fa43ed8b2e9917f06ab3a06d48a7600ff86107a'
TARGET_TRACKING_SITE = 'https://github.com/sbaidachni/linux_video_tracking'
TARGET_TRACKING_SITE_METHOD = git
TARGET_TRACKING_GIT_SUBMODULES = YES

define TARGET_TRACKING_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/src all
endef

define TARGET_TRACKING_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/src/capture $(TARGET_DIR)/bin
endef

$(eval $(generic-package))
