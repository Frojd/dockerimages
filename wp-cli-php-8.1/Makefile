NAME = ghcr.io/frojd/dockerimages/wp-cli-php-8.1

build:
	docker build -t $(NAME):2.8.1 --rm --build-arg WPCLI_VERSION=2.8.1 .
	docker tag $(NAME):2.8.1 $(NAME):2.8

	docker build -t $(NAME):2.9.0 --rm --build-arg WPCLI_VERSION=2.9.0 .
	docker tag $(NAME):2.9.0 $(NAME):2.9

	docker build -t $(NAME):2.10.0 --rm --build-arg WPCLI_VERSION=2.10.0 .
	docker tag $(NAME):2.10.0 $(NAME):2.10

	docker build -t $(NAME):2.11.0 --rm --build-arg WPCLI_VERSION=2.11.0 .
	docker tag $(NAME):2.11.0 $(NAME):2.11

	docker build -t $(NAME):2.12.0 --rm --build-arg WPCLI_VERSION=2.12.0 .
	docker tag $(NAME):2.12.0 $(NAME):2.12

	docker tag $(NAME):2.12 $(NAME):latest

push:
	docker push $(NAME):2.8
	docker push $(NAME):2.8.1
	docker push $(NAME):2.9
	docker push $(NAME):2.9.0
	docker push $(NAME):2.10
	docker push $(NAME):2.10.0
	docker push $(NAME):2.11
	docker push $(NAME):2.11.0
	docker push $(NAME):2.12
	docker push $(NAME):2.12.0

	docker push $(NAME):latest
