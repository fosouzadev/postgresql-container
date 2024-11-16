IMAGE_NAME=ghcr.io/fosouzadev/postgresql-container
TAG=1.0

build:
	docker build --build-arg DB_PASSWORD=$(DB_PASSWORD) . -t $(IMAGE_NAME):$(TAG)
	docker build --build-arg DB_PASSWORD=$(DB_PASSWORD) . -t $(IMAGE_NAME):latest

publish:
	docker push $(IMAGE_NAME):$(TAG)
	docker push $(IMAGE_NAME):latest
