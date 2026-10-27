# DevOps Engineering Portfolio

Welcome to my practical DevOps portfolio! This repository contains a series of real-world engineering projects built from scratch, focusing on automation, containerization, and robust infrastructure workflows.

## 🚀 Projects Structure

| # | Project Name | Description | Status |
|---|---|---|---|
| **01** | [DevOps Sentinel](./project-01-sentinel) | Modular Linux system health monitoring & automated alerting via systemd | **Completed** ✅ |
| **02** | [ReproDeploy](./project-02-reprodeploy) | Containerized multi-service environment (Docker Compose, Python Flask API, PostgreSQL with healthchecks, Nginx reverse proxy) | **Completed** ✅ |

---

## 🛠 Project Details & Tech Stack

### 1. DevOps Sentinel (`./project-01-sentinel`)
A comprehensive system health monitoring and automation suite designed to track server metrics and manage background operations.
* **Core Capabilities:** Modular bash scripts for CPU, Disk, Process, and SSH connection checks, orchestrated by a central runner.
* **Automation:** Integrated with user-level `systemd` services and timers for reliable background execution.
* **Key Tech:** Bash, Linux, Systemd, Cron.

### 2. ReproDeploy (`./project-02-reprodeploy`)
A fully reproducible, containerized multi-service web stack designed to solve environment drift and ensure seamless deployments.
* **Architecture:** 
  * **Nginx:** Acts as a reverse proxy and secure entry point for traffic routing.
  * **Python Flask API:** Lightweight web application handling business logic and live database queries.
  * **PostgreSQL:** Reliable relational database backed by Docker volumes and strict container health checks (`pg_isready`).
* **Key Tech:** Docker, Docker Compose, Python (Flask, Psycopg2), Nginx, Linux.

---

## 📐 Engineering Principles
- **Local-First Execution:** Built with Docker, Linux, and systemd to master core technologies and simulate production-grade environments locally.
- **Strict Git & PR Workflow:** Feature branches, descriptive conventional commits (`feat:`, `chore:`), GitHub Pull Requests, and clean history merged into `main`.
- **Security & Reliability:** Strict bash error-handling (`set -euo pipefail`), automated health checks, persistent volumes, and background service orchestration.

---
*Author: Sviatoslav Kozych*# DevOps Engineering Portfolio

Welcome to my practical DevOps portfolio! This repository contains a series of real-world engineering projects built from scratch, focusing on automation, containerization, CI/CD, security, and infrastructure reproducibility.

## 🚀 Projects Structure

| # | Project Name | Description | Status |
|---|---|---|---|
| **01** | [DevOps Sentinel](./project-01-sentinel) | Modular Linux system health monitoring & automated alerting via systemd | **Completed** |
| **02** | *ReproDeploy* | Containerized multi-service environment (Docker, Nginx, PostgreSQL) | *Coming Soon* |

## 🛠 Engineering Principles
- **Local-First Execution:** Built with Docker, Linux, and systemd to avoid unnecessary cloud costs while mastering core technologies.
- **Strict Git Workflow:** Feature branches, Pull Requests, code reviews, and clean commit history.
- **Security & Automation:** Bash error-handling (`set -euo pipefail`), automated health checks, and persistent background services.

---
*Author: Sviatoslav Kozych*
