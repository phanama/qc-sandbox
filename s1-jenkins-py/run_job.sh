#!/usr/bin/env bash

set -o errexit

SOURCE_DIR=$(dirname ${BASH_SOURCE[0]})
pip3 install --upgrade --upgrade-strategy=only-if-needed -r ${SOURCE_DIR}/requirements.txt > /dev/null 2>&1
python3 ${SOURCE_DIR}/validate_ip.py $(cat ${SOURCE_DIR}/input_ip.txt)
