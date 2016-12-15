#!/usr/bin/env bash

# Consul conveniences, because lazy

consulator() {
    CONSUL_URL="http://localhost:8500/v1"
    if [[ "$1" == "addr" ]]; then
        echo "$CONSUL_URL"
    elif [[ "$1" == "status" ]]; then
        curl -s $CONSUL_URL/status/$2; echo
    elif [[ "$1" == "kv" ]]; then
        curl -s $CONSUL_URL/kv/$2?raw; echo
    else
        curl -s $CONSUL_URL/catalog/service/$1 | jq .
    fi
}
