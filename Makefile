include theos/makefiles/common.mk

TWEAK_NAME = JBUnlock
JBUnlock_FILES = Tweak.xm
JBUnlock_FRAMEWORKS = Foundation UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
