ARCHS = arm64
FINALPACKAGE = 1

INSTALL_TARGET_PROCESSES = SpringBoard
TWEAK_NAME = Gester13

Gester13_FILES = Tweak.xm
Gester13_LIBRARIES = MobileGestalt

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
