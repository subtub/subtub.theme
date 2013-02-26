#
# subtub.theme Makefile
#

SUBTUB_THEME = subtub.theme
SUBTUB_THEME_VERSION = 0.1.0

BUILD_DIR = build


build:
	@echo "Building  ${SUBTUB_THEME}$  v.${SUBTUB_THEME_VERSION}$...."
	lessc less/subtub.less > ${BUILD_DIR}$/style.css
	

release:
	mkdir ${BUILD_DIR}$
	@echo "TODO"


clean:
	rm -rf ${BUILD_DIR}$
	@echo "TODO"


install:
	sudo gem install less


.PHONY: build release clean
