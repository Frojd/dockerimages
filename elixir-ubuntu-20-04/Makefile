NAME = frojd/elixir-ubuntu-20-04

build:
	docker build -t $(NAME):1.13.0 --rm --build-arg ELIXIR_VERSION=1.13.0-1 .
	docker build -t $(NAME):1.12.2 --rm --build-arg ELIXIR_VERSION=1.12.2-1 .
	docker build -t $(NAME):1.11.2 --rm --build-arg ELIXIR_VERSION=1.11.2-1 .
	docker build -t $(NAME):1.10.4 --rm --build-arg ELIXIR_VERSION=1.10.4-1 .

	docker tag $(NAME):1.13.0 $(NAME):1.13
	docker tag $(NAME):1.12.2 $(NAME):1.12
	docker tag $(NAME):1.11.2 $(NAME):1.11
	docker tag $(NAME):1.10.4 $(NAME):1.10
	docker tag $(NAME):1.13 $(NAME):latest

push:
	docker push $(NAME):1.10
	docker push $(NAME):1.10.4
	docker push $(NAME):1.11
	docker push $(NAME):1.11.2
	docker push $(NAME):1.12
	docker push $(NAME):1.12.2
	docker push $(NAME):1.13
	docker push $(NAME):1.13.0
	docker push $(NAME):latest
