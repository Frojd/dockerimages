NAME = frojd/elixir-ubuntu-18-04

build:
	docker build -t $(NAME):1.8.1 --rm --build-arg ELIXIR_VERSION=1.8.1-1 .

	docker tag $(NAME):1.8.1 $(NAME):1.8
	docker tag $(NAME):1.8 $(NAME):latest

push:
	docker push $(NAME):1.8
	docker push $(NAME):latest
