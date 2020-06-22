NAME = frojd/elixir-ubuntu-20-04

build:
	docker build -t $(NAME):1.10.3 --rm --build-arg ELIXIR_VERSION=1.10.3-1 .

	docker tag $(NAME):1.10.3 $(NAME):1.10
	docker tag $(NAME):1.10 $(NAME):latest

push:
	docker push $(NAME):1.10
	docker push $(NAME):1.10.3
	docker push $(NAME):latest
