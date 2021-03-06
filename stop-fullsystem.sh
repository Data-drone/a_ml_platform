#!/bin/bash

## create the network for the platform
# done in datalake code
#docker network create ml_platform

## start the system

### This isn't working as the first successful docker-compose holds the session open
# due to pyhive amundsen preview doesn't work
#(cd superset_template ; docker-compose -f docker-compose.yml -p superset --env-file ../.env stop)

(cd mlflow_template ; docker-compose -f docker-compose-ml_platform.yml -p ml_flow --env-file ../.env stop)

(cd amundsen_template ; docker-compose -f docker-compose.yml -p amundsen --env-file ../.env stop)

(cd airflow_template ; docker-compose -f docker-compose.yml -p airflow --env-file ../.env stop)

(cd spark_data_eng_template ; docker-compose -f docker-compose.yml -p datalake --env-file ../.env stop)


#(cd feature_store ; docker-compose -f docker-compose.yml --env-file ../.env up)
# -p datalake --force-recreate --env-file ../.env --build up)