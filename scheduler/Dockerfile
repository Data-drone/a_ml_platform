FROM python:3.8-slim-buster

# update files
RUN apt-get update && \
    apt-get install -y netcat && \
    apt-get install vim -y && \
    pip3 install apache-airflow[celery,redis,postgres,crypto]==2.1.0

WORKDIR /root/airflow

COPY config/variables.json variables.json
COPY config/connections.yml connections.yml
COPY config/setup_connections.py setup_connections.py
COPY config/requirements.txt requirements.txt
COPY entrypoint.sh entrypoint.sh
RUN chmod +x ./entrypoint.sh

COPY dags/ dags

ENTRYPOINT ["./entrypoint.sh"]