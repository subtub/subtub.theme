#
# subtub.theme Makefile
#

# The name and the version
THEME_NAME = subtub
THEME_VERSION = 0.1.0

# Parameter
RC_DIR = ./less
BUILD_DIR = ./build
RELEASE_DIR = css
BIN_PREFIX = ./node_modules/.bin
RECESS_BIN = $(BIN_PREFIX)/recess

# ANSI codes, set some color to makefile
ANSI_COLOR=\033[36m
ANSI_RESET=\033[0m


# compile less to css
build:
	@echo "${ANSI_COLOR}Building ${THEME_NAME} v.${THEME_VERSION}"
	mkdir -p ${BUILD_DIR}
	$(RECESS_BIN) --compile ${SRC_DIR}/${THEME_NAME}.less > ${BUILD_DIR}/${THEME_NAME}.css
	$(RECESS_BIN) --compile ${SRC_DIR}/responsive.less > ${BUILD_DIR}/${THEME_NAME}-responsive.css
	@echo "Building Ready!!!${ANSI_RESET}"


# compile less to css and compress it
build-min:
	mkdir -p ${BUILD_DIR}
	$(RECESS_BIN) --compress ${SRC_DIR}/${THEME_NAME}.less > ${BUILD_DIR}/${THEME_NAME}.min.css
	$(RECESS_BIN) --compress ${SRC_DIR}/responsive.less > ${BUILD_DIR}/${THEME_NAME}-responsive-min.css 


release:
	mkdir -p ${RELEASE_DIR}$
	$(RECESS_BIN) --compile ${SRC_DIR}/${THEME_NAME}.less > ${RELEASE_DIR}/${THEME_NAME}.css
	$(RECESS_BIN) --compress ${SRC_DIR}/${THEME_NAME}.less > ${RELEASE_DIR}/${THEME_NAME}.min.css
	$(RECESS_BIN) --compile ${SRC_DIR}/responsive.less > ${RELEASE_DIR}/${THEME_NAME}-responsive.css 
	$(RECESS_BIN) --compress ${SRC_DIR}/responsive.less > ${RELEASE_DIR}/${THEME_NAME}-responsive-min.css 


clean:
	rm -rf ${BUILD_DIR}


install:
	npm install


help:
	@echo "${ANSI_COLOR}${THEME_NAME} v.${THEME_VERSION}"
	@echo "Based on Twitter Bootstrap!"
	@echo ""
	@echo "usage:"
	@echo "     build              Build the ${THEME_NAME} theme"
	@echo "     build-min          Build and Compress the ${THEME_NAME} theme"
	@echo "     release            Build less and copy to release dir."
	@echo "     clean              Clean the Project"
	@echo "     test               Test case"
	@echo "     install            Install less stuff"
	@echo "     help               Show this help${ANSI_RESET}"


test:
	@echo "${ANSI_COLOR}Begin Testing"
	mkdir -p build
	$(RECESS_BIN) --compile ${SRC_DIR}/${THEME_NAME}.less > ${BUILD_DIR}/${THEME_NAME}.css
	$(RECESS_BIN) --compress ${SRC_DIR}/${THEME_NAME}.less > ${BUILD_DIR}/${THEME_NAME}.min.css
	$(RECESS_BIN) --compile ${SRC_DIR}/responsive.less > ${BUILD_DIR}/${THEME_NAME}-responsive.css 
	$(RECESS_BIN) --compress ${SRC_DIR}/responsive.less > ${BUILD_DIR}/${THEME_NAME}-responsive-min.css 
	@echo "Testing Finished${ANSI_RESET}"


.PHONY: build build-min release clean install help test
