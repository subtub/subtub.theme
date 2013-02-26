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
SRC_DIR = ./less
BUILD_DIR = ./build
RELEASE_DIR = css


# compile less to css
build:
	@echo "Building  ${THEME_NAME}$  v.${THEME_VERSION}$...."
	mkdir -p ${BUILD_DIR}$
	./node_modules/.bin/recess --compile ${SRC_DIR}/subtub.less > ${BUILD_DIR}/subtub.css 
	./node_modules/.bin/recess --compile ${SRC_DIR}/responsive.less > ${BUILD_DIR}/subtub-responsive.css 
	@echo "Building Ready!!!"


# compile less to css and compress it
build-min:
	mkdir -p ${BUILD_DIR}$
	./node_modules/.bin/recess --compress ${SRC_DIR}/subtub.less > ${BUILD_DIR}/subtub.min.css
	./node_modules/.bin/recess --compress ${SRC_DIR}/responsive.less > ${BUILD_DIR}/subtub-responsive-min.css 


release:
	mkdir -p ${RELEASE_DIR}$
	./node_modules/.bin/recess --compile ${SRC_DIR}/subtub.less > ${RELEASE_DIR}/subtub.css
	./node_modules/.bin/recess --compress ${SRC_DIR}/subtub.less > ${RELEASE_DIR}/subtub.min.css
	./node_modules/.bin/recess --compile ${SRC_DIR}/responsive.less > ${RELEASE_DIR}/subtub-responsive.css 
	./node_modules/.bin/recess --compress ${SRC_DIR}/responsive.less > ${RELEASE_DIR}/subtub-responsive-min.css 

clean:
	rm -rf ${BUILD_DIR}$


install:
	npm install


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
