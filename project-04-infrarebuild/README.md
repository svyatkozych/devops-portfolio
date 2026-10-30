# Project 4: InfraRebuild (Infrastructure as Code with Terraform)

InfraRebuild demonstrates core Infrastructure as Code (IaC) principles using Terraform, managing infrastructure declaratively with local state tracking, variables, and outputs.

## 📂 Structure
* `terraform/main.tf` — Core infrastructure declarations using the local provider.
* `terraform/variables.tf` — Configurable input variables (environment, node counts, project naming).
* `terraform/outputs.tf` — Exposed outputs for downstream integration.

## 🚀 Key Features
* **Declarative Provisioning:** Managing infrastructure state without manual script execution.
* **Idempotency & Safety:** Preview changes using `terraform plan` before applying them.
* **Local-First Approach:** Fully operational in a local Linux/Docker environment with zero cloud costs.
