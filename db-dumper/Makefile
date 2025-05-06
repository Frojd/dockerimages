NAME = ghcr.io/frojd/dockerimages/db-dumper
REQUIREMENTS_TXT=./requirements.txt

init: venv
	$(VENV)/pip install -r $(PWD)/requirements.txt
	$(VENV)/ansible-galaxy collection install -r $(PWD)/requirements.yml

scaleway_db_to_bucket: venv
	$(VENV)/ansible-playbook playbooks/scaleway_db_to_bucket.yml -e @./config/variables.yml

build:
	docker build -t $(NAME):1.1.2 --rm .
	docker tag $(NAME):1.1.2 $(NAME):1.1
	docker tag $(NAME):1.1 $(NAME):latest

push:
	docker push $(NAME):1.1
	docker push $(NAME):1.1.2
	docker push $(NAME):latest

include Makefile.venv
