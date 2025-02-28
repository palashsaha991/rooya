#!/bin/bash

# Add Helm repositories
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

# Update Helm repositories
helm repo update

# Deploy PostgreSQL with a password
helm install postgres bitnami/postgresql --set postgresqlPassword=123456@Rooya

# Deploy Prometheus Stack
helm install kube-prometheus-stack prometheus-community/kube-prometheus-stack

echo "PostgreSQL and Prometheus deployments are complete!"

