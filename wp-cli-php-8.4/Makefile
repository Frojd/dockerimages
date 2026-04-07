NAME = ghcr.io/frojd/dockerimages/wp-cli-php-8.4

build:
	docker build -t $(NAME):2.11.0 --rm --build-arg WPCLI_VERSION=2.11.0 .
	docker tag $(NAME):2.11.0 $(NAME):2.11

	docker build -t $(NAME):2.12.0 --rm --build-arg WPCLI_VERSION=2.12.0 .
	docker tag $(NAME):2.12.0 $(NAME):2.12

	docker tag $(NAME):2.12 $(NAME):latest

push:
	docker push $(NAME):2.11
	docker push $(NAME):2.11.0
	docker push $(NAME):2.12
	docker push $(NAME):2.12.0

	docker push $(NAME):latest
