NAME = ghcr.io/frojd/dockerimages/wp-cli-php-8.1

build:
	docker build -t $(NAME):2.7.1 --rm --build-arg WPCLI_VERSION=2.7.1 .

	docker tag $(NAME):2.7.1 $(NAME):2.7.1
	docker tag $(NAME):2.7.1 $(NAME):2.7
	docker tag $(NAME):2.7 $(NAME):latest

push:
	docker push $(NAME):2.7
	docker push $(NAME):2.7.1

	docker push $(NAME):latest
