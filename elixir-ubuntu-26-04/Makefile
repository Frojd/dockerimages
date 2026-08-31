NAME = ghcr.io/frojd/dockerimages/elixir-ubuntu-26-04

build:
	docker build -t $(NAME):1.20.4 --rm --platform linux/x86_64 --build-arg ERLANG_VERSION=29.0.5 --build-arg ELIXIR_VERSION=1.20.4-otp-29 .

	docker tag $(NAME):1.20.4 $(NAME):1.20
	docker tag $(NAME):1.20 $(NAME):latest

push:
	docker push $(NAME):1.20
	docker push $(NAME):1.20.4
	docker push $(NAME):latest
