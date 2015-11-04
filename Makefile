DOCKER = docker
REPO = cubieboard.info:5000/armv7hf_cron

TAG = $(shell git rev-parse --abbrev-ref HEAD 2>/dev/null)
ifeq ($(TAG), master)
	TAG = latest
else ifeq ($(TAG), HEAD)
	TAG = latest
endif

all: build

run: build
	$(DOCKER) run -i -t $(REPO):$(TAG)

build:
	$(DOCKER) build -t $(REPO):$(TAG) .
