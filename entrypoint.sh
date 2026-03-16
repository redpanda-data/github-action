#!/bin/sh

docker_run="docker run"

run_redpanda="$docker_run -d -p 9092:9092 -p 9644:9644 redpandadata/redpanda:${INPUT_VERSION} redpanda start --overprovisioned --smp 1 --memory 1G --reserve-memory 0M --node-id 0 --check=false"
sh -c "$run_redpanda"
