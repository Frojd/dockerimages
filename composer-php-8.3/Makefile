NAME = ghcr.io/frojd/dockerimages/composer-php-8.3

build:
	docker build -t $(NAME):1.9.3 --rm --build-arg COMPOSER_VERSION=1.9.3 .
	docker tag $(NAME):1.9.3 $(NAME):1.9

	docker build -t $(NAME):1.9.2 --rm --build-arg COMPOSER_VERSION=1.9.2 .
	docker tag $(NAME):1.9.2 $(NAME):1.9.2

	docker build -t $(NAME):2.0.2 --rm --build-arg COMPOSER_VERSION=2.0.2 .
	docker tag $(NAME):2.0.2 $(NAME):2.0

	docker build -t $(NAME):2.2.4 --rm --build-arg COMPOSER_VERSION=2.2.4 .
	docker tag $(NAME):2.2.4 $(NAME):2.2

	docker build -t $(NAME):2.4.4 --rm --build-arg COMPOSER_VERSION=2.4.4 .
	docker tag $(NAME):2.4.4 $(NAME):2.4

	docker build -t $(NAME):2.5.8 --rm --build-arg COMPOSER_VERSION=2.5.8 .
	docker tag $(NAME):2.5.8 $(NAME):2.5

	docker build -t $(NAME):2.6.6 --rm --build-arg COMPOSER_VERSION=2.6.6 .
	docker tag $(NAME):2.6.6 $(NAME):2.6

	docker build -t $(NAME):2.7.9 --rm --build-arg COMPOSER_VERSION=2.7.9 .
	docker tag $(NAME):2.7.9 $(NAME):2.7

	docker build -t $(NAME):2.8.10 --rm --build-arg COMPOSER_VERSION=2.8.10 .
	docker tag $(NAME):2.8.10 $(NAME):2.8

	docker tag $(NAME):2.8 $(NAME):latest

push:
	docker push $(NAME):1.9
	docker push $(NAME):1.9.2
	docker push $(NAME):1.9.3

	docker push $(NAME):2.0
	docker push $(NAME):2.2
	docker push $(NAME):2.2.4
	docker push $(NAME):2.4
	docker push $(NAME):2.4.4
	docker push $(NAME):2.5
	docker push $(NAME):2.5.8
	docker push $(NAME):2.6
	docker push $(NAME):2.6.6
	docker push $(NAME):2.7
	docker push $(NAME):2.7.9
	docker push $(NAME):2.8
	docker push $(NAME):2.8.10

	docker push $(NAME):latest
