NAME = ghcr.io/frojd/dockerimages/postgis-sv_se

build:
	docker build -t $(NAME):17 --rm --no-cache --pull --build-arg POSTGRES_VERSION=17-3.5 .
	docker build -t $(NAME):16 --rm --no-cache --pull --build-arg POSTGRES_VERSION=16-3.5 .
	docker build -t $(NAME):15 --rm --no-cache --pull --build-arg POSTGRES_VERSION=15-3.5 .
	docker build -t $(NAME):14 --rm --no-cache --pull --build-arg POSTGRES_VERSION=14-3.5 .
	docker build -t $(NAME):13 --rm --no-cache --pull --build-arg POSTGRES_VERSION=13-3.5 .
	docker build -t $(NAME):12 --rm --no-cache --pull --build-arg POSTGRES_VERSION=12-2.5 .
	docker build -t $(NAME):11 --rm --no-cache --pull --build-arg POSTGRES_VERSION=11-2.5 .
	docker build -t $(NAME):10 --rm --no-cache --pull --build-arg POSTGRES_VERSION=10-2.5 .

	docker tag $(NAME):17 $(NAME):latest

push:
	docker push $(NAME):17
	docker push $(NAME):16
	docker push $(NAME):15
	docker push $(NAME):14
	docker push $(NAME):13
	docker push $(NAME):12
	docker push $(NAME):11
	docker push $(NAME):10
	docker push $(NAME):latest
