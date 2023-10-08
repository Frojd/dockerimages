###########
# BUILDER #
###########

# using ubuntu LTS version
FROM ubuntu:22.04 AS builder-image

# avoid stuck build due to user prompt
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install --no-install-recommends -y python3.11 python3.11-dev libpq-dev python3.11-venv python3-pip python3-wheel build-essential && \
	apt-get clean && rm -rf /var/lib/apt/lists/*

# create and activate virtual environment
# using final folder name to avoid path issues with packages
RUN python3.11 -m venv /home/app/venv
ENV PATH="/home/app/venv/bin:$PATH"

# install requirements
COPY requirements.txt .
COPY requirements.yml .
RUN pip3 install --no-cache-dir wheel
RUN pip3 install --no-cache-dir -r requirements.txt
RUN ansible-galaxy collection install -r requirements.yml

###########
# Final #
###########

FROM ubuntu:22.04 AS runner-image
RUN apt-get update && apt-get install --no-install-recommends -y python3.11 python3-venv tzdata && \
	apt-get clean && rm -rf /var/lib/apt/lists/*

RUN addgroup app --gid 1000 && adduser app --gid 1000 --uid 1000
COPY --from=builder-image /home/app/venv /home/app/venv

WORKDIR /home/app
COPY playbooks/sub-plays playbooks/sub-plays
COPY playbooks/scaleway_db_to_bucket.yml playbooks/
RUN mkdir tmp

# make sure all messages always reach console
ENV PYTHONUNBUFFERED=1

# activate virtual environment
ENV VIRTUAL_ENV=/home/app/venv
ENV PATH="/home/app/venv/bin:$PATH"


RUN chown -R app:app /home/app
USER app

CMD ["ansible-playbook", "playbooks/export_db_to_bucket.yml", "-e", "@./config/variables.yml"]
