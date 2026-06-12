install:
	kubectl create namespace roboshop-dev
	helm upgrade -i . -f $$component_name.yaml
all:
	kubectl create namespace roboshop-dev
	for component_name in frontend cart catalogue payment orders shipping rating user; do helm upgrade -i roboshop-dev . -f values/$$component_name.yaml -n roboshop-dev; done
		