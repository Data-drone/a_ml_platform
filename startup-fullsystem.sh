#!/bin/bash

## create the network for the platform
# done in datalake code
#docker network create ml_platform

## start the system


(cd spark_data_eng_template ; docker-compose -f docker-compose.yml -p datalake --force-recreate --env-file ../.env up)

(cd airflow_template ; docker-compose -f docker-compose.yml -p airflow_scheduler --env-file ../.env up)

(cd feature_store ; docker-compose -f docker-compose.yml --env-file ../.env up)
# -p datalake --force-recreate --env-file ../.env --build up)