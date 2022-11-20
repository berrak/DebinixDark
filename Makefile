#!/usr/bin/make
# WARN: gmake syntax
SHELL := bash
VERSION := 0.2.0

LIBRARY := DebinixDark
ARCHIVE := $(LIBRARY)-$(VERSION).zip

# Update Location https://support.arduino.cc/hc/en-us/articles/4408893497362-Use-a-custom-theme-for-Arduino-IDE-1
ARDUINO_THEME_LOCATION := $$HOME/Arduino/theme

all: require help

require:
	@echo
	@echo -n " test if pre-requisite program zip is installed..."
	@zip --version >/dev/null 2>&1 || (echo "ERROR: zip is required, please install it."; exit 1)
	@echo "OK"
	@echo

help:
	@echo
	@echo " *** Creates the zip archive and copies it to Arduino IDE 1.8.x sketchbook folder. ***"	
	@echo " help ---------- Show this help"
	@echo " theme --------- Creates the zip archive for 'sketchbook/theme'"
	@echo " install ------- Copy the theme '$(LIBRARY)' to '$(ARDUINO_THEME_LOCATION)'"
	@echo

clean:
	rm -f $(ARCHIVE)

theme: clean
	@echo " Building $(LIBRARY) zip archive"
	zip -r $(ARCHIVE) * -x "*zip" -x "*test*" -x "*Makefile*"
	@echo "Do not unzip the archive. Arduino IDE loads the content from the archive."

install: clean theme
	rm -f $(ARDUINO_THEME_LOCATION)/$(ARCHIVE)	
	cp -f $(ARCHIVE) $(ARDUINO_THEME_LOCATION)
	@echo " ----------------------------------------------------------------"
	@echo " Installed theme $(LIBRARY) in '$(ARDUINO_THEME_LOCATION)'"
	@echo " ----------------------------------------------------------------"

.PHONY: all require help clean install theme install
