NAME = ghcr.io/frojd/dockerimages/composer-php-8.4

build:
	docker build -t $(NAME):2.2.4 --rm --build-arg COMPOSER_VERSION=2.2.4 .
	docker tag $(NAME):2.2.4 $(NAME):2.2

	docker build -t $(NAME):2.7.9 --rm --build-arg COMPOSER_VERSION=2.7.9 .
	docker tag $(NAME):2.7.9 $(NAME):2.7

	docker build -t $(NAME):2.9.5 --rm --build-arg COMPOSER_VERSION=2.9.5 .
	docker tag $(NAME):2.9.5 $(NAME):2.9

	docker tag $(NAME):2.9 $(NAME):latest

push:
	docker push $(NAME):2.2
	docker push $(NAME):2.2.4

	docker push $(NAME):2.7
	docker push $(NAME):2.7.9

	docker push $(NAME):2.9
	docker push $(NAME):2.9.5

	docker push $(NAME):latest
