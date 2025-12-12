#!/bin/bash

helm repo add apache-airflow https://airflow.apache.org

helm repo update

helm upgrade --install airflow apache-airflow/airflow --namespace insight --create-namespace -f values.yaml