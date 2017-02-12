.PHONY: list

list:
	@awk -F: '/^[A-z]/ {print $$1}' Makefile | sort

_ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

build:
	docker build -t 90kts/tcp_reset_demo:latest .

push:
	docker push 90kts/tcp_reset_demo

test:
	/usr/local/share/jmeter-3.0/bin/jmeter -n -t tcp_reset_demo.jmx

run:
	docker run --rm --privileged --name "tcp_reset_demo" -p 2180:80 -v $$(pwd)/example-content:/var/www 90kts/tcp_reset_demo:latest

run_with_reset:
	docker run -e TCP_RESET=true --rm --privileged --name "tcp_reset_demo" -p 2180:80 -v $$(pwd)/example-content:/var/www 90kts/tcp_reset_demo:latest

run_with_packet_loss:
	docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock gaiaadm/pumba \
		pumba netem --interface eth0 --duration 15m \
		loss --percent 50 --correlation 50 \
		tcp_reset_demo

run_with_delay:
	docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock gaiaadm/pumba \
		pumba netem --interface eth0 --duration 15m \
		delay --time 3000 \
		tcp_reset_demo