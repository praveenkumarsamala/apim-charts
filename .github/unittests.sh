#!/bin/bash
set -euo pipefail

helm plugin install https://github.com/helm-unittest/helm-unittest.git

CHART_DIRS=(gateway portal)
path=$(pwd)

for CHART_DIR in ${CHART_DIRS[@]}; do
    cd charts/${CHART_DIR}
    helm unittest .
    cd $path
done
