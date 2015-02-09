
ifeq ($(TARGET),rhel7)
	OS := rhel7
else
	OS := centos7
endif

ifeq ($(VERSION), 0.10)
	VERSION := 0.10
else
	VERSION := 
endif

.PHONY: build
build:
	hack/build.sh $(OS) $(VERSION)


.PHONY: test
test:
	hack/test.sh $(OS) $(VERSION)
