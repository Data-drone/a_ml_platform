#!/bin/bash

## create the network for the platform
# done in datalake code
#docker network create ml_platform

## start the system

### This isn't working as the first successful docker-compose holds the session open
(cd spark_data_eng_template ; docker-compose -f docker-compose.yml -p datalake --env-file ../.env up -d --build)

(cd airflow_template ; docker-compose -f docker-compose.yml -p airflow --env-file ../.env up -d --build)

(cd amundsen_template ; docker-compose -f docker-compose.yml -p amundsen --env-file ../.env up -d --build)

(cd mlflow_template ; docker-compose -f docker-compose-ml_platform.yml -p ml_flow --env-file ../.env up -d --build)

(cd superset_template ; docker-compose -f docker-compose.yml -p superset --env-file ../.env up -d --build)

#(cd feature_store ; docker-compose -f docker-compose.yml --env-file ../.env up)
# -p datalake --force-recreate --env-file ../.env --build up)