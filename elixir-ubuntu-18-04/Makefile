NAME = ghcr.io/frojd/dockerimages/elixir-ubuntu-18-04

build:
	docker build -t $(NAME):1.17.3 --rm --platform linux/x86_64 --build-arg ERLANG_VERSION=26.2 --build-arg ELIXIR_VERSION=1.17.3-otp-26 .
	docker build -t $(NAME):1.16.1 --rm --platform linux/x86_64 --build-arg ERLANG_VERSION=26.2 --build-arg ELIXIR_VERSION=1.16.1-otp-26 .
	docker build -t $(NAME):1.15.7 --rm --platform linux/x86_64 --build-arg ERLANG_VERSION=25.3 --build-arg ELIXIR_VERSION=1.15.7-otp-25 .
	docker build -t $(NAME):1.14.5 --rm --platform linux/x86_64 --build-arg ERLANG_VERSION=25.3 --build-arg ELIXIR_VERSION=1.14.5-otp-25 .
	docker build -t $(NAME):1.13.4 --rm --platform linux/x86_64 --build-arg ERLANG_VERSION=25.3 --build-arg ELIXIR_VERSION=1.13.4-otp-25 .
	docker build -t $(NAME):1.12.3 --rm --platform linux/x86_64 --build-arg ERLANG_VERSION=24.3 --build-arg ELIXIR_VERSION=1.12.3-otp-24 .
	docker build -t $(NAME):1.11.4 --rm --platform linux/x86_64 --build-arg ERLANG_VERSION=24.3 --build-arg ELIXIR_VERSION=1.11.4-otp-24 .
	docker build -t $(NAME):1.10.4 --rm --platform linux/x86_64 --build-arg ERLANG_VERSION=23.3 --build-arg ELIXIR_VERSION=1.10.4-otp-23 .
	docker build -t $(NAME):1.9.4 --rm --platform linux/x86_64 --build-arg ERLANG_VERSION=22.3 --build-arg ELIXIR_VERSION=1.9.4-otp-22 .
	docker build -t $(NAME):1.8.2 --rm --platform linux/x86_64 --build-arg ERLANG_VERSION=22.3 --build-arg ELIXIR_VERSION=1.8.2-otp-22 .
	docker build -t $(NAME):1.7.4 --rm --platform linux/x86_64 --build-arg ERLANG_VERSION=22.3 --build-arg ELIXIR_VERSION=1.7.4-otp-22 .
	docker build -t $(NAME):1.6.6 --rm --platform linux/x86_64 --build-arg ERLANG_VERSION=21.3 --build-arg ELIXIR_VERSION=1.6.6-otp-21 .
	docker build -t $(NAME):1.5.3 --rm --platform linux/x86_64 --build-arg ERLANG_VERSION=20.3 --build-arg ELIXIR_VERSION=1.5.3-otp-20 .

	docker tag $(NAME):1.17.3 $(NAME):1.17
	docker tag $(NAME):1.16.1 $(NAME):1.16
	docker tag $(NAME):1.15.7 $(NAME):1.15
	docker tag $(NAME):1.14.5 $(NAME):1.14
	docker tag $(NAME):1.13.4 $(NAME):1.13
	docker tag $(NAME):1.12.3 $(NAME):1.12
	docker tag $(NAME):1.11.4 $(NAME):1.11
	docker tag $(NAME):1.10.4 $(NAME):1.10
	docker tag $(NAME):1.9.4 $(NAME):1.9
	docker tag $(NAME):1.8.2 $(NAME):1.8
	docker tag $(NAME):1.7.4 $(NAME):1.7
	docker tag $(NAME):1.6.6 $(NAME):1.6
	docker tag $(NAME):1.5.3 $(NAME):1.5
	docker tag $(NAME):1.17 $(NAME):latest

push:
	docker push $(NAME):1.5
	docker push $(NAME):1.5.3
	docker push $(NAME):1.6
	docker push $(NAME):1.6.6
	docker push $(NAME):1.7
	docker push $(NAME):1.7.4
	docker push $(NAME):1.8
	docker push $(NAME):1.8.2
	docker push $(NAME):1.9
	docker push $(NAME):1.9.4
	docker push $(NAME):1.10
	docker push $(NAME):1.10.4
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
	docker push $(NAME):1.17
	docker push $(NAME):1.17.3
	docker push $(NAME):latest
