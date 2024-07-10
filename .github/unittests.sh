#!/bin/bash
set -euo pipefail

helm plugin install https://github.com/helm-unittest/helm-unittest.git

CHART_DIRS=(gateway portal)

for CHART_DIR in ${CHART_DIRS[@]}; do
    echo "step1"
    pwd
    cd charts/${CHART_DIR}
    #helm unittest -f 'tests_${CHART_DIR}/*.yaml' .
    helm unittest .
    echo "step2"
    pwd
    cd ..
    echo "step3"
    pwd
    cd ..
    echo "step4"
    pwd
done
