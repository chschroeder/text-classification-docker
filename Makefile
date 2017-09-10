include settings.mk

.PHONY: build

build: text-classification-core
	cd text-classification-notebook && make

default: build
