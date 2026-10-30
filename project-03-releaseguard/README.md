# Project 3: ReleaseGuard (CI/CD Quality Gate & Release Safety)

ReleaseGuard is a robust CI/CD pipeline implementation designed to block faulty code and configurations from reaching production environments.

## 🛠 Features
* **Quality Gate:** Automated Unit Testing with `pytest` prior to artifact generation.
* **Container Build Verification:** Automated Docker container build validation.
* **Smoke Testing:** Isolated container deployment & healthcheck verification (`/health`).
* **Rollback & Release Block:** Automatic pipeline failure and release interruption if smoke tests fail.

## 📁 Structure
* `app/` — Python Flask service with healthcheck & version endpoints.
* `tests/` — Automated pytest unit test suite.
* `scripts/smoke_test.sh` — Smoke testing execution script with retries and failure detection.
* `.github/workflows/releaseguard.yml` — Central GitHub Actions pipeline configuration.
