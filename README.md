
# DevOps Engineering Portfolio

Welcome to my practical DevOps portfolio! This repository contains a series of real-world engineering projects built from scratch, focusing on automation, containerization, infrastructure as code, and robust reliability workflows.

## 🚀 Projects Structure

| # | Project Name | Description | Status |
|---|---|---|---|
| **01** | [DevOps Sentinel](./project-01-sentinel) | Modular Linux system health monitoring & automated alerting via systemd | **Completed** ✅ |
| **02** | [ReproDeploy](./project-02-reprodeploy) | Containerized multi-service environment (Docker Compose, Python Flask API, PostgreSQL with healthchecks, Nginx reverse proxy) | **Completed** ✅ |
| **03** | [ReleaseGuard](./project-03-releaseguard) | CI/CD Quality Gate with automated testing, container builds, smoke tests, and rollback safety | **Completed** ✅ |
| **04** | [InfraRebuild](./project-04-infrarebuild) | Infrastructure as Code (IaC) using Terraform with declarative local provisioning, variables, and outputs | **Completed** ✅ |
| **05** | [ServerBootstrap](./project-05-serverbootstrap) | Automated configuration management & server provisioning using Ansible with local inventory and idempotent playbooks | **Completed** ✅ |

---

## 🛠 Project Details & Tech Stack

### 1. DevOps Sentinel (`./project-01-sentinel`)
A comprehensive system health monitoring and automation suite designed to track server metrics and manage background operations.
* **Core Capabilities:** Modular bash scripts for CPU, Disk, Process, and SSH connection checks, orchestrated by a central runner.
* **Automation:** Integrated with user-level `systemd` services and timers for reliable background execution.
* **Key Tech:** Bash, Linux, Systemd.

### 2. ReproDeploy (`./project-02-reprodeploy`)
A fully reproducible, containerized multi-service web stack designed to solve environment drift and ensure seamless deployments.
* **Architecture:** 
  * **Nginx:** Acts as a reverse proxy and secure entry point for traffic routing.
  * **Python Flask API:** Lightweight web application handling business logic and live database queries.
  * **PostgreSQL:** Reliable relational database backed by Docker volumes and strict container health checks (`pg_isready`).
* **Key Tech:** Docker, Docker Compose, Python (Flask, Psycopg2), Nginx, Linux.

### 3. ReleaseGuard (`./project-03-releaseguard`)
A robust CI/CD release pipeline designed to block faulty code and configurations from reaching production environments.
* **Core Capabilities:** Automated unit testing (`pytest`), container image validation, ephemeral container smoke testing (`/health`), and automated release gating.
* **Key Tech:** GitHub Actions, Python (Pytest, Flask), Docker, Bash.

### 4. InfraRebuild (`./project-04-infrarebuild`)
Demonstrates core Infrastructure as Code (IaC) principles to eliminate manual drift and ensure reproducible resource allocation.
* **Core Capabilities:** Declarative provisioning, variable-driven configurations, output mapping, and local state management.
* **Key Tech:** Terraform, HCL, Local Provider.

### 5. ServerBootstrap (`./project-05-serverbootstrap`)
Automates server environment preparation and configuration management using declarative configuration code.
* **Core Capabilities:** Idempotent playbook execution, package state management, automated directory/workspace structuring, and dry-run validation (`--check`).
* **Key Tech:** Ansible, YAML, SSH (Local connection).

---

## 📐 Engineering Principles
- **Local-First Execution:** Built with Docker, Linux, Terraform, Ansible, and systemd to master core technologies and simulate production-grade environments locally with zero cost.
- **Strict Git & PR Workflow:** Feature branches, descriptive conventional commits (`feat:`, `chore:`), GitHub Pull Requests, and clean history merged into `main`.
- **Security & Reliability:** Strict error-handling (`set -euo pipefail`), automated health checks, persistent volumes, idempotent automation, and background service orchestration.

---
*Author: Sviatoslav Kozych*
# DevOps Engineering Portfolio

Welcome to my practical DevOps portfolio! This repository contains a series of real-world engineering projects built from scratch, focusing on automation, containerization, infrastructure as code, and robust reliability workflows.

## 🚀 Projects Structure

| # | Project Name | Description | Status |
|---|---|---|---|
| **01** | [DevOps Sentinel](./project-01-sentinel) | Modular Linux system health monitoring & automated alerting via systemd | **Completed** ✅ |
| **02** | [ReproDeploy](./project-02-reprodeploy) | Containerized multi-service environment (Docker Compose, Python Flask API, PostgreSQL with healthchecks, Nginx reverse proxy) | **Completed** ✅ |
| **03** | [ReleaseGuard](./project-03-releaseguard) | CI/CD Quality Gate with automated testing, container builds, smoke tests, and rollback safety | **Completed** ✅ |
| **04** | [InfraRebuild](./project-04-infrarebuild) | Infrastructure as Code (IaC) using Terraform with declarative local provisioning, variables, and outputs | **Completed** ✅ |
| **05** | [ServerBootstrap](./project-05-serverbootstrap) | Automated configuration management & server provisioning using Ansible with local inventory and idempotent playbooks | **Completed** ✅ |
| **06** | [IncidentLens](./project-06-incidentlens) | Local full-stack observability platform with Prometheus, Grafana, Loki, and incident triage runbooks | **Completed** ✅ |

---

## 🛠 Project Details & Tech Stack

### 1. DevOps Sentinel (`./project-01-sentinel`)
A comprehensive system health monitoring and automation suite designed to track server metrics and manage background operations.
* **Core Capabilities:** Modular bash scripts for CPU, Disk, Process, and SSH connection checks, orchestrated by a central runner.
* **Automation:** Integrated with user-level `systemd` services and timers for reliable background execution.
* **Key Tech:** Bash, Linux, Systemd.

### 2. ReproDeploy (`./project-02-reprodeploy`)
A fully reproducible, containerized multi-service web stack designed to solve environment drift and ensure seamless deployments.
* **Architecture:** 
  * **Nginx:** Acts as a reverse proxy and secure entry point for traffic routing.
  * **Python Flask API:** Lightweight web application handling business logic and live database queries.
  * **PostgreSQL:** Reliable relational database backed by Docker volumes and strict container health checks (`pg_isready`).
* **Key Tech:** Docker, Docker Compose, Python (Flask, Psycopg2), Nginx, Linux.

### 3. ReleaseGuard (`./project-03-releaseguard`)
A robust CI/CD release pipeline designed to block faulty code and configurations from reaching production environments.
* **Core Capabilities:** Automated unit testing (`pytest`), container image validation, ephemeral container smoke testing (`/health`), and automated release gating.
* **Key Tech:** GitHub Actions, Python (Pytest, Flask), Docker, Bash.

### 4. InfraRebuild (`./project-04-infrarebuild`)
Demonstrates core Infrastructure as Code (IaC) principles to eliminate manual drift and ensure reproducible resource allocation.
* **Core Capabilities:** Declarative provisioning, variable-driven configurations, output mapping, and local state management.
* **Key Tech:** Terraform, HCL, Local Provider.

### 5. ServerBootstrap (`./project-05-serverbootstrap`)
Automates server environment preparation and configuration management using declarative configuration code.
* **Core Capabilities:** Idempotent playbook execution, package state management, automated directory/workspace structuring, and dry-run validation (`--check`).
* **Key Tech:** Ansible, YAML, SSH (Local connection).

### 6. IncidentLens (`./project-06-incidentlens`)
Provides a local full-stack observability platform combining metrics, log aggregation, visualization, and structured incident runbooks.
* **Core Capabilities:** Real-time metrics collection (Prometheus), centralized log aggregation (Loki/Promtail), visual triage dashboards (Grafana), and incident runbooks.
* **Key Tech:** Prometheus, Grafana, Loki, Docker Compose.

---

## 📐 Engineering Principles
- **Local-First Execution:** Built with Docker, Linux, Terraform, Ansible, Prometheus, Grafana, Loki, and systemd to master core technologies and simulate production-grade environments locally with zero cost.
- **Strict Git & PR Workflow:** Feature branches, descriptive conventional commits (`feat:`, `chore:`), GitHub Pull Requests, and clean history merged into `main`.
- **Security & Reliability:** Strict error-handling (`set -euo pipefail`), automated health checks, persistent volumes, idempotent automation, and background service orchestration.

---
*Author: Sviatoslav Kozych*
