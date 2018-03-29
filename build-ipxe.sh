#!/bin/bash

CONTAINER=bpdev/ipxe-builder

docker run -v ${PWD}/$1:/ipxe -i -t ${CONTAINER}
