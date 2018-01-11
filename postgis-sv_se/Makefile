NAME = frojd/postgis-sv_se

build:
	docker build -t $(NAME):9.6 --rm --build-arg POSTGRES_VERSION=9.6 .
	docker build -t $(NAME):9.5 --rm --build-arg POSTGRES_VERSION=9.5 .

	docker tag $(NAME):9.6 $(NAME):latest

push:
	docker push $(NAME):9.6
	docker push $(NAME):9.5
	docker push $(NAME):latest
