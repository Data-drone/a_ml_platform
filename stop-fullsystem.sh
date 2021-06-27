#!/bin/bash

## create the network for the platform
# done in datalake code
#docker network create ml_platform

## start the system

### This isn't working as the first successful docker-compose holds the session open
(cd superset_template ; docker-compose -f docker-compose.yml -p superset --env-file ../.env stop)

(cd amundsen_template ; docker-compose -f docker-compose.yml -p amundsen_discovery --env-file ../.env stop)

(cd airflow_template ; docker-compose -f docker-compose.yml -p airflow_scheduler --env-file ../.env stop)

(cd spark_data_eng_template ; docker-compose -f docker-compose.yml -p datalake_test --env-file ../.env stop)




#(cd feature_store ; docker-compose -f docker-compose.yml --env-file ../.env up)
# -p datalake --force-recreate --env-file ../.env --build up)