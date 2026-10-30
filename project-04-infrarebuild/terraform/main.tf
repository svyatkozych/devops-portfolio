terraform {
  required_version = ">= 1.0.0"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4.0"
    }
  }
}

provider "local" {}

# Створюємо локальний файл інфраструктурного маніфесту
resource "local_file" "infra_manifest" {
  filename = "${path.module}/output/infrastructure_status.json"
  content  = jsonencode({
    environment = var.environment
    project     = var.project_name
    managed_by  = "Terraform (InfraRebuild)"
    timestamp   = timestamp()
    nodes       = var.cluster_nodes
  })
}

# Створюємо директорію для логів інфраструктури
resource "local_file" "deploy_readme" {
  filename = "${path.module}/output/README.md"
  content  = "# Deployed Environment: ${var.environment}\nManaged automatically via InfraRebuild Terraform module."
}
