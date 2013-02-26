#
# subtub.theme Makefile
#

SUBTUB_THEME = subtub.theme
SUBTUB_THEME_VERSION = 0.1.0

BUILD_DIR = build


build:
	@echo "Building  ${SUBTUB_THEME}$  v.${SUBTUB_THEME_VERSION}$...."
	lessc less/subtub.less > less/subtub.css
	

release:
	mkdir ${BUILD_DIR}$
	@echo "TODO"


clean:
	rm -rf ${BUILD_DIR}$
	@echo "TODO"


install:
	sudo gem install less

help:
	@echo ${SUBTUB_THEME}$  v.${SUBTUB_THEME_VERSION}$
	@echo ""
	@echo "usage:"
	@echo "     build              Build the "${SUBTUB_THEME}$
	@echo "     release            Build less and copy to release dir."
	@echo "     clean              Clean  dir"
	@echo "     install            Install less stuff"
	@echo "     help               Show this help"

.PHONY: build release clean install help
