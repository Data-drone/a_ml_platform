#!/bin/bash

## create the network for the platform
# done in datalake code
#docker network create ml_platform

## start the system
spark_data_eng_template/docker-compose -f sched_docker-compose.yml up --build