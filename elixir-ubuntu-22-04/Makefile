NAME = ghcr.io/frojd/dockerimages/elixir-ubuntu-22-04

build:
	docker build -t $(NAME):1.16.1 --rm --platform linux/x86_64 --build-arg ERLANG_VERSION=25.3 --build-arg ELIXIR_VERSION=1.15.7-otp-25 .
	docker build -t $(NAME):1.15.7 --rm --platform linux/x86_64 --build-arg ERLANG_VERSION=25.3 --build-arg ELIXIR_VERSION=1.15.7-otp-25 .
	docker build -t $(NAME):1.14.5 --rm --platform linux/x86_64 --build-arg ERLANG_VERSION=25.3 --build-arg ELIXIR_VERSION=1.14.5-otp-25 .
	docker build -t $(NAME):1.13.4 --rm --platform linux/x86_64 --build-arg ERLANG_VERSION=25.3 --build-arg ELIXIR_VERSION=1.13.4-otp-25 .
	docker build -t $(NAME):1.12.3 --rm --platform linux/x86_64 --build-arg ERLANG_VERSION=24.3 --build-arg ELIXIR_VERSION=1.12.3-otp-24 .
	docker build -t $(NAME):1.11.4 --rm --platform linux/x86_64 --build-arg ERLANG_VERSION=24.3 --build-arg ELIXIR_VERSION=1.11.4-otp-24 .

	docker tag $(NAME):1.16.1 $(NAME):1.16
	docker tag $(NAME):1.15.7 $(NAME):1.15
	docker tag $(NAME):1.14.5 $(NAME):1.14
	docker tag $(NAME):1.13.4 $(NAME):1.13
	docker tag $(NAME):1.12.3 $(NAME):1.12
	docker tag $(NAME):1.11.4 $(NAME):1.11
	docker tag $(NAME):1.16 $(NAME):latest

push:
	docker push $(NAME):1.11
	docker push $(NAME):1.11.4
	docker push $(NAME):1.12
	docker push $(NAME):1.12.3
	docker push $(NAME):1.13
	docker push $(NAME):1.13.4
	docker push $(NAME):1.14
	docker push $(NAME):1.14.5
	docker push $(NAME):1.15
	docker push $(NAME):1.15.7
	docker push $(NAME):1.16
	docker push $(NAME):1.16.1
	docker push $(NAME):latest
