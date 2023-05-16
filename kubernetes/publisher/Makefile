#!/bin/bash
NAMESPACE=publisher
replicas=1

all:
	# kubectl create namespace $(NAMESPACE) 2>/dev/null ; true
	# kubectl create secret generic cloud-secret -n $(NAMESPACE) \
  	# 	--from-file=secret/cloud_user.txt,secret/cloud_passwd.txt,secret/kafka_host.txt 2>/dev/null ; true
	kubectl apply -f main.yaml

scale:
	kubectl scale deploy/publisher --namespace $(NAMESPACE) --replicas=$(replicas)

clean:
	kubectl delete all --namespace $(NAMESPACE) --all
	# kubectl delete namespace $(NAMESPACE)