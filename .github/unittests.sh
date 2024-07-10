#!/bin/bash
set -euo pipefail

helm plugin install https://github.com/helm-unittest/helm-unittest.git
cd charts/gateway
helm unittest .
pwd
ls -lrt
hostname
