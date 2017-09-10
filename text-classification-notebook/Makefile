include ../settings.mk

.PHONY: build text-classification-plotting

build: text-classification-plotting
	docker build -t chschroeder/text-classification-notebook:$(VERSION) --build-arg VERSION=$(VERSION) .

text-classification-plotting:
	cd ../text-classification-plotting && make

default: build
