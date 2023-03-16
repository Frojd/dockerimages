NAME = ghcr.io/frojd/dockerimages/wp-cli-php-7.2

build:
	docker build -t $(NAME):2.3.0 --rm --build-arg WPCLI_VERSION=2.3.0 .
	docker build -t $(NAME):2.4.0 --rm --build-arg WPCLI_VERSION=2.4.0 .

	docker tag $(NAME):2.3.0 $(NAME):2.3
	docker tag $(NAME):2.4.0 $(NAME):2.4
	docker tag $(NAME):2.4 $(NAME):latest

push:
	docker push $(NAME):2.3
	docker push $(NAME):2.4
	docker push $(NAME):latest
