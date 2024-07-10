#!/bin/bash
set -euo pipefail

sh "helm plugin install https://github.com/helm-unittest/helm-unittest.git"
sh "helm unittest ."
