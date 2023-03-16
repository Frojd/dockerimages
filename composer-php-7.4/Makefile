NAME = ghcr.io/frojd/dockerimages/composer-php-7.4

build:
	docker build -t $(NAME):1.9.3 --rm --build-arg COMPOSER_VERSION=1.9.3 .
	docker tag $(NAME):1.9.3 $(NAME):1.9

	docker build -t $(NAME):1.9.2 --rm --build-arg COMPOSER_VERSION=1.9.2 .
	docker tag $(NAME):1.9.2 $(NAME):1.9.2

	docker build -t $(NAME):2.0.2 --rm --build-arg COMPOSER_VERSION=2.0.2 .
	docker tag $(NAME):2.0.2 $(NAME):2.0

	docker build -t $(NAME):2.2.4 --rm --build-arg COMPOSER_VERSION=2.2.4 .
	docker tag $(NAME):2.2.4 $(NAME):2.2

	docker tag $(NAME):2.2 $(NAME):latest

push:
	docker push $(NAME):1.9
	docker push $(NAME):1.9.2
	docker push $(NAME):1.9.3

	docker push $(NAME):2.0
	docker push $(NAME):2.2
	docker push $(NAME):2.2.4

	docker push $(NAME):latest
