DOCKER_REPO=kernsuite/awimager:dev

.PHONY: build clean

all: run

build:
		docker build -t ${DOCKER_REPO} .

clean:
	docker rmi ${DOCKER_REPO}

upload: build
	docker push ${DOCKER_REPO}

run: build
	kliko-run ${DOCKER_REPO}
