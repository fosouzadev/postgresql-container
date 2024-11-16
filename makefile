IMAGE_NAME=postgresql-container
TAG=1.0

build:
	docker build . -t ghcr.io/fosouzadev/$(IMAGE_NAME):$(TAG)
	docker build . -t ghcr.io/fosouzadev/$(IMAGE_NAME):latest

publish:
	docker push ghcr.io/fosouzadev/$(IMAGE_NAME):$(TAG)
	docker push ghcr.io/fosouzadev/$(IMAGE_NAME):latest