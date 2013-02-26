#
# subtub.theme Makefile
#

#
# The name and the version
#
THEME_NAME = subtub
THEME_VERSION = 0.1.0

#
# Parameter
#
SRC_DIR = less
BUILD_DIR = build
RELEASE_DIR = css


# compile less to css
build:
	@echo "Building  ${THEME_NAME}$  v.${THEME_VERSION}$...."
	mkdir -p ${BUILD_DIR}$
	lessc ${SRC_DIR}/subtub.less > ${BUILD_DIR}/subtub.css

# compile less to css and compress it
build-min:
	mkdir -p ${BUILD_DIR}$
	lessc ${SRC_DIR}/subtub.less > ${BUILD_DIR}/subtub.min.css --yui-compress
	

release:
	mkdir -p ${BUILD_DIR}$
	lessc ${SRC_DIR}/subtub.less > css/subtub.css
	lessc ${SRC_DIR}/subtub.less > css/subtub.min.css --yui-compress


clean:
	rm -rf ${BUILD_DIR}$
	@echo "TODO"


install:
	sudo gem install less

help:
	@echo ${THEME_NAME}$  v.${THEME_VERSION}$
	@echo ""
	@echo "usage:"
	@echo "     build              Build the "${THEME_NAME}$
	@echo "     release            Build less and copy to release dir."
	@echo "     clean              Clean  dir"
	@echo "     install            Install less stuff"
	@echo "     help               Show this help"

.PHONY: build release clean install help
