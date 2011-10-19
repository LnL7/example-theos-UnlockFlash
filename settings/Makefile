include theos/makefiles/common.mk

BUNDLE_NAME = Settings
Settings_FILES = Settings.mm
Settings_INSTALL_PATH = /Library/PreferenceBundles
Settings_FRAMEWORKS = UIKit
Settings_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/Settings.plist$(ECHO_END)
