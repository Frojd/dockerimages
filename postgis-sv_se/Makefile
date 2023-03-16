NAME = ghcr.io/frojd/postgis-sv_se

build:
	docker build -t $(NAME):12 --rm --build-arg POSTGRES_VERSION=12-2.5 .
	docker build -t $(NAME):11 --rm --build-arg POSTGRES_VERSION=11-2.5 .
	docker build -t $(NAME):10 --rm --build-arg POSTGRES_VERSION=10-2.5 .

	docker tag $(NAME):12 $(NAME):latest

push:
	docker push $(NAME):12
	docker push $(NAME):11
	docker push $(NAME):10
	docker push $(NAME):latest
