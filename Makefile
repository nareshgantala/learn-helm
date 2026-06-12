install:
		helm upgrade -i . -f $$component_name.yaml

all:
		for component_name in frontend cart catalogue payment orders shipping rating user; do helm upgrade -i . -f $$component_name.yaml; done
		