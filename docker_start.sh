#!/bin/bash
set -ex

${HOME}/OpenMC/openmc/tools/ci/download-xs.sh

# Generate default jupyter config file 
if [[ ! -e /config/jupyter/jupyter_lab_config.py ]]; then
    jupyter lab --generate-config
fi

# Ask for password
if [[ ! -e /config/jupyter/jupyter_server_config.json ]]; then
    jupyter server password
fi

cd ${DATASETS} && jupyter lab --ip 0.0.0.0 --port=8888 --allow-root --no-browser