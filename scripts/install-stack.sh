#!/usr/bin/env bash
# Install observability stack: add repo, update deps, helm upgrade --install
set -e
RELEASE_NAME=observability
NAMESPACE=observability

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update

cd "$(dirname "$0")/.."
helm dependency update helm/observability
helm upgrade --install "$RELEASE_NAME" helm/observability \
  --namespace "$NAMESPACE" \
  --create-namespace \
  -f helm/observability/values.yaml

echo "Apply SLO rules: kubectl apply -f manifests/prometheus-rules-slo.yaml"
