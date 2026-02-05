NAME = ghcr.io/frojd/dockerimages/elixir-ubuntu-20-04

build:
	docker build -t $(NAME):1.17.3 --rm --platform linux/x86_64 --build-arg ERLANG_VERSION=26.2 --build-arg ELIXIR_VERSION=1.17.3-otp-26 .
	docker build -t $(NAME):1.16.1 --rm --platform linux/x86_64 --build-arg ERLANG_VERSION=26.2 --build-arg ELIXIR_VERSION=1.16.1-otp-26 .
	docker build -t $(NAME):1.15.7 --rm --platform linux/x86_64 --build-arg ERLANG_VERSION=26.2 --build-arg ELIXIR_VERSION=1.15.7-otp-26 .

	docker tag $(NAME):1.17.3 $(NAME):1.17
	docker tag $(NAME):1.16.1 $(NAME):1.16
	docker tag $(NAME):1.15.7 $(NAME):1.15
	docker tag $(NAME):1.17 $(NAME):latest

push:
	docker push $(NAME):1.15
	docker push $(NAME):1.15.7
	docker push $(NAME):1.16
	docker push $(NAME):1.16.1
	docker push $(NAME):1.17
	docker push $(NAME):1.17.3
	docker push $(NAME):latest
