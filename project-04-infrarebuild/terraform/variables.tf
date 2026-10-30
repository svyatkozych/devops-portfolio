variable "project_name" {
  type    = string
  default = "InfraRebuild"
}

variable "environment" {
  type    = string
  default = "development"
}

variable "cluster_nodes" {
  type    = number
  default = 3
}
