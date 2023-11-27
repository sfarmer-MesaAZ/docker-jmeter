#!/bin/bash
#
# Run JMeter Docker image with options

NAME="jmeter"
JMETER_VERSION=${JMETER_VERSION:-"latest"}
IMAGE="justb4/jmeter:${JMETER_VERSION}"
HOST="mndevl.mesanow.mesa:10.101.105.110"
# Finally run
docker run --add-host mndevl.mesanow.mesa:10.101.105.110 --rm --name ${NAME} -i -v ${PWD}:${PWD} -w ${PWD} ${IMAGE} $@

