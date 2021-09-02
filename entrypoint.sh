#!/bin/bash

read -r -d '' RUN_KAFKA <<EOF
docker run -d --pull=always --rm \
-p 9092:9092 \
-p 9644:9644 \
docker.vectorized.io/vectorized/redpanda:${INPUT_KAFKA_VERSION} \
redpanda start \
--overprovisioned \
--smp 1 \
--memory 1G \
--reserve-memory 0M \
--node-id 0 \
--check=false
EOF

sh -c "$RUN_KAFKA"
