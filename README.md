# Kubernetes Observability Stack

**Prometheus + Grafana + Alertmanager full-stack monitoring**

Production-grade Kubernetes observability platform using Prometheus Operator, Grafana dashboards, Alertmanager routing, and custom SLO/SLA tracking — deployed via Helm with GitOps-driven configuration.

## Tech

Kubernetes · Prometheus · Grafana · Alertmanager · Helm · Loki · Tempo · GitLab CI

## Highlights

- Prometheus Operator CRDs for declarative ServiceMonitor/PodMonitor
- Golden signals dashboards: latency, traffic, errors, saturation
- Multi-window SLO alerting with burn rate policies
- Loki log aggregation with structured JSON parsing
- Distributed tracing via Tempo with Grafana Explore integration

## Metrics

- 200+ custom metrics scraped
- 15 Grafana dashboards
- P99 latency alerts < 200ms SLO
- Zero alert fatigue policy

## License

MIT
