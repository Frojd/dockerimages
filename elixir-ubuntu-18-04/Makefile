NAME = frojd/elixir-ubuntu-18-04

build:
	docker build -t $(NAME):1.9.4 --rm --build-arg ELIXIR_VERSION=1.9.4-1 .
	docker build -t $(NAME):1.8.1 --rm --build-arg ELIXIR_VERSION=1.8.1-1 .
	docker build -t $(NAME):1.7.4 --rm --build-arg ELIXIR_VERSION=1.7.4-1 .
	docker build -t $(NAME):1.6.6 --rm --build-arg ELIXIR_VERSION=1.6.6-1 .

	docker tag $(NAME):1.9.4 $(NAME):1.9
	docker tag $(NAME):1.8.1 $(NAME):1.8
	docker tag $(NAME):1.7.4 $(NAME):1.7
	docker tag $(NAME):1.6.6 $(NAME):1.6
	docker tag $(NAME):1.8 $(NAME):latest

push:
	docker push $(NAME):1.9
	docker push $(NAME):1.9.4
	docker push $(NAME):1.8
	docker push $(NAME):1.8.1
	docker push $(NAME):1.7
	docker push $(NAME):1.7.4
	docker push $(NAME):1.6
	docker push $(NAME):1.6.6
	docker push $(NAME):latest
