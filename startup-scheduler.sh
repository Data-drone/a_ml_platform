#!/bin/bash

## create the network for the platform
docker network create ml_platform

## start the system
docker-compose -f sched_docker-compose.yml up --build