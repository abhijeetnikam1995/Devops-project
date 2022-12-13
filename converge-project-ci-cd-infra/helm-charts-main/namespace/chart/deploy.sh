#!/bin/bash
kubectl apply -f ns-converge-dev.yaml
kubectl apply -f ns-converge-stage.yaml
kubectl apply -f ns-converge-prod.yaml
kubectl apply -f ns-monitoring.yaml