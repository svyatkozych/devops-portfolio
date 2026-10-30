output "manifest_file_path" {
  description = "Path to the generated infrastructure manifest file"
  value       = local_file.infra_manifest.filename
}

output "deployment_environment" {
  description = "Target deployment environment"
  value       = var.environment
}
