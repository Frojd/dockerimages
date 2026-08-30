NAME = ghcr.io/frojd/dockerimages/elixir-ubuntu-24-04

build:
	docker build -t $(NAME):1.20.4 --rm --platform linux/x86_64 --build-arg ERLANG_VERSION=28.5.0.5 --build-arg ELIXIR_VERSION=1.20.4-otp-28 .
	docker build -t $(NAME):1.19.6 --rm --platform linux/x86_64 --build-arg ERLANG_VERSION=27.3.4.16 --build-arg ELIXIR_VERSION=1.19.6-otp-27 .
	docker build -t $(NAME):1.18.5 --rm --platform linux/x86_64 --build-arg ERLANG_VERSION=27.3.4.16 --build-arg ELIXIR_VERSION=1.18.5-otp-27 .
	docker build -t $(NAME):1.17.3 --rm --platform linux/x86_64 --build-arg ERLANG_VERSION=27.3.4.16 --build-arg ELIXIR_VERSION=1.17.3-otp-27 .
	docker build -t $(NAME):1.16.1 --rm --platform linux/x86_64 --build-arg ERLANG_VERSION=26.2 --build-arg ELIXIR_VERSION=1.16.1-otp-26 .
	docker build -t $(NAME):1.15.7 --rm --platform linux/x86_64 --build-arg ERLANG_VERSION=26.2 --build-arg ELIXIR_VERSION=1.15.7-otp-26 .

	docker tag $(NAME):1.20.4 $(NAME):1.20
	docker tag $(NAME):1.19.6 $(NAME):1.19
	docker tag $(NAME):1.18.5 $(NAME):1.18
	docker tag $(NAME):1.17.3 $(NAME):1.17
	docker tag $(NAME):1.16.1 $(NAME):1.16
	docker tag $(NAME):1.15.7 $(NAME):1.15
	docker tag $(NAME):1.20 $(NAME):latest

push:
	docker push $(NAME):1.15
	docker push $(NAME):1.15.7
	docker push $(NAME):1.16
	docker push $(NAME):1.16.1
	docker push $(NAME):1.17
	docker push $(NAME):1.17.3
	docker push $(NAME):1.18
	docker push $(NAME):1.18.5
	docker push $(NAME):1.19
	docker push $(NAME):1.19.6
	docker push $(NAME):1.20
	docker push $(NAME):1.20.4
	docker push $(NAME):latest
