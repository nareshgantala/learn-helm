install:
	-kubectl create namespace roboshop-dev
	helm upgrade -i . -f $$component_name.yaml
all:
	-kubectl create namespace roboshop-dev
	for component_name in frontend cart catalogue payment orders shipping ratings user; do helm upgrade -i $$component_name . -f values/$$component_name.yaml -n roboshop-dev; done
uninstall:
	for component_name in frontend cart catalogue payment orders shipping ratings user; do helm uninstall $$component_name -n roboshop-dev; done		