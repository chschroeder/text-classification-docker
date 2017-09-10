include ../settings.mk

.PHONY: build text-classification-core

build: text-classification-core
	docker build -t chschroeder/text-classification-plotting:$(VERSION) --build-arg VERSION=$(VERSION) .

text-classification-core:
	cd ../text-classification-core && make

default: build
