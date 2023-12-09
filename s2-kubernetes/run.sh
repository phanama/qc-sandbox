#!/usr/bin/env bash

set -o errexit

SOURCE_DIR=$(dirname ${BASH_SOURCE[0]})
helm install mongodb ${SOURCE_DIR}/kubernetes/
