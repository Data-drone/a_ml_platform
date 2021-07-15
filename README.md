# Building a ML Platform

Building an open source ML Platform

Components:
- Spark based datalake
   - https://github.com/Data-drone/spark_data_eng_template.git
   - Added as submodule into the system
- Airflow Scheduler - 
- Amundsen Data Discovery - https://github.com/Data-drone/amundsen_template.git
- Superset Vis - There are issues with PyHive and Spark Thrift which stop this working
- Feature Store - Waiting for Feast to mature a little more maybe?
- MLFlow - https://github.com/Data-drone/mlflow_template
## Starting components


Use the bash script to start and stop components.
This will help make sure that start components in the correct order and also make sure network settings are right
## Scheduler

Airflow scheduler setup

- setup from: https://medium.com/codex/how-to-scale-out-apache-airflow-2-0-with-redis-and-celery-3e668e003b5c

- adjustments
  - adding network external network def
  - moved some files to subfolders
  - add spark bits to it so that we can spark-submit as client
  - DAGs folder linked to outside project


## Notes

In order to have persistent Spark SQL tables for use across different sessions we need to add a hive metastore

There are issues with having multiple postgres servers running and managing the .env file... 

## Thoughts structure and todos

-- Maybe break it up into different components
-- Scheduler as sub-project
-- Data Eng / Lake as sub-project
-- Data Discovery as sub-project
-- MLSection as sub-project