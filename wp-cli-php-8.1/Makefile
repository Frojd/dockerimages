NAME = frojd/wp-cli-php-8.1

build:
	docker build -t $(NAME):2.3.0 --rm --build-arg WPCLI_VERSION=2.3.0 .
	docker build -t $(NAME):2.4.0 --rm --build-arg WPCLI_VERSION=2.4.0 .
	docker build -t $(NAME):2.4.1 --rm --build-arg WPCLI_VERSION=2.4.1 .
	docker build -t $(NAME):2.7.1 --rm --build-arg WPCLI_VERSION=2.7.1 .

	docker tag $(NAME):2.3.0 $(NAME):2.3
	docker tag $(NAME):2.3.0 $(NAME):2.3.0
	docker tag $(NAME):2.4.0 $(NAME):2.4.0
	docker tag $(NAME):2.4.1 $(NAME):2.4
	docker tag $(NAME):2.4.1 $(NAME):2.4.1
	docker tag $(NAME):2.7.1 $(NAME):2.7
	docker tag $(NAME):2.7.1 $(NAME):2.7.1
	docker tag $(NAME):2.7 $(NAME):latest

push:
	docker push $(NAME):2.3.0

	docker push $(NAME):2.4.0
	docker push $(NAME):2.4.1

	docker push $(NAME):2.7
	docker push $(NAME):2.7.1

	docker push $(NAME):latest
