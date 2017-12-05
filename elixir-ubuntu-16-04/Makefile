NAME = frojd/elixir-ubuntu-16-04

build:
	docker build -t $(NAME):1.5.2 --rm --build-arg ELIXIR_VERSION=1.5.2-1 .

	docker tag $(NAME):1.5.2 $(NAME):1.5
	docker tag $(NAME):1.5.2 $(NAME):latest

push:
	docker push $(NAME):1.5.2
	docker push $(NAME):1.5
	docker push $(NAME):latest
