# Project 7: ZeroDowntime Lab (Kubernetes Deployments & Rollbacks)

ZeroDowntime Lab demonstrates advanced Kubernetes deployment strategies, guaranteeing continuous availability during updates, rigorous health verification via probes, and fast automated rollbacks in case of failure.

## 📂 Structure
* `manifests/deployment.yaml` — Kubernetes Deployment and Service definitions with RollingUpdate strategy and health probes.

## 🚀 Key Features
* **Zero-Downtime Rolling Updates:** Configured with `maxSurge: 1` and `maxUnavailable: 0` to ensure seamless version transitions.
* **Health Probes:** `readinessProbe` and `livenessProbe` to safely route traffic only to healthy pods.
* **Quick Rollbacks:** Ability to revert faulty releases instantly via `kubectl rollout undo`.
