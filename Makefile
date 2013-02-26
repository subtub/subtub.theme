#
# subtub.theme Makefile
#

SUBTUB_THEME = subtub.theme
SUBTUB_THEME_VERSION = 0.1.0

BUILD_DIR = build


# compile less to css
build:
	@echo "Building  ${SUBTUB_THEME}$  v.${SUBTUB_THEME_VERSION}$...."
	mkdir ${BUILD_DIR}$
	lessc less/subtub.less > ${BUILD_DIR}/subtub.css

# compile less to css and compress it
build-min:
	mkdir ${BUILD_DIR}$
	lessc less/subtub.less > ${BUILD_DIR}/subtub.min.css --yui-compress
	

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
