#!/bin/bash
PUB_NAMESPACE=publisher
SUB_NAMESPACE=subscriber

all:
	kubectl create namespace $(PUB_NAMESPACE) 2>/dev/null ; true
	kubectl create secret generic cloud-secret -n $(PUB_NAMESPACE) \
  		--from-file=secret/cloud_user.txt,secret/cloud_passwd.txt,secret/kafka_host.txt
	kubectl create namespace $(SUB_NAMESPACE) 2>/dev/null ; true
	kubectl create secret generic cloud-secret -n $(SUB_NAMESPACE) \
  		--from-file=secret/cloud_user.txt,secret/cloud_passwd.txt,secret/kafka_host.txt
	@cd simulator && make all 2>/dev/null ; true
	@cd publisher && make all 2>/dev/null ; true
	@cd subscriber && make all 2>/dev/null ; true

clean:
	@cd simulator && make clean 2>/dev/null ; true
	@cd publisher && make clean 2>/dev/null ; true
	@cd subscriber && make clean 2>/dev/null ; true
	@kubectl delete namespace $(PUB_NAMESPACE) 2>/dev/null ; true
	@kubectl delete namespace $(SUB_NAMESPACE) 2>/dev/null ; true
