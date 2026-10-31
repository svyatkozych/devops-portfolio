# Project 5: ServerBootstrap (Ansible Configuration Management)

ServerBootstrap automates server environment provisioning and configuration management using Ansible, ensuring idempotent execution and eliminating environment drift.

## 📂 Structure
* `ansible/inventory.ini` — Target inventory defining local execution connections.
* `ansible/playbook.yml` — Idempotent configuration tasks covering system updates, utility packages, and workspace setup.

## 🚀 Key Features
* **Configuration as Code:** Declarative server setup replacing manual administration.
* **Idempotency:** Safe repeated executions via Ansible modules (`state: present`).
* **Dry-Run Validation:** Ability to preview changes using `--check` before applying.
