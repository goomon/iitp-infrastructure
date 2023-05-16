#!/bin/bash
NAMESPACE=analysis
replicas=1

all:
	kubectl create namespace $(NAMESPACE) 2>/dev/null ; true
	kubectl create configmap db-init --namespace $(NAMESPACE) --from-file init.sql 2>/dev/null ; true
	kubectl apply -f main.yaml

clean:
	kubectl delete all --namespace $(NAMESPACE) --all
	kubectl delete namespace $(NAMESPACE)