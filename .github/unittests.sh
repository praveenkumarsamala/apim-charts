#!/bin/bash
set -euo pipefail

helm plugin install https://github.com/helm-unittest/helm-unittest.git

CHART_DIRS=(gateway portal)

for CHART_DIR in ${CHART_DIRS[@]}; do
    cd charts/${CHART_DIR}
    helm unittest -f 'tests_${CHART_DIR}/*.yaml' .
done
